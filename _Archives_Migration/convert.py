import xml.etree.ElementTree as ET
import os
import re
from datetime import datetime
from urllib.parse import urlparse

# Configuration
FEED_FILE = 'feed.atom'
OUTPUT_DIR = 'content/posts'

# Namespaces Blogger/Atom
NS = {
    'atom': 'http://www.w3.org/2005/Atom',
    'blogger': 'http://schemas.google.com/blogger/2018'
}

def clean_html_to_md(html):
    """Conversion basique HTML vers Markdown pour Blowfish."""
    if not html: return ""
    text = html
    # Titres et Formats
    text = re.sub(r'<h[1-3][^>]*>(.*?)</h[1-3]>', r'## \1\n', text)
    text = re.sub(r'<(b|strong)>', '**', text)
    text = re.sub(r'</(b|strong)>', '**', text)
    # Liens et Images
    text = re.sub(r'<a href="([^"]*)">(.*?)</a>', r'[\2](\1)', text)
    text = re.sub(r'<img [^>]*src="([^"]*)"[^>]*>', r'![Illustration](\1)', text)
    # Nettoyage structurel
    text = re.sub(r'</p>', '\n\n', text)
    text = re.sub(r'<br\s*/?>', '\n', text)
    text = re.sub(r'<[^>]+>', '', text)
    return text.strip()

def slugify(text):
    text = text.lower()
    text = re.sub(r'[^\w\s-]', '', text)
    return re.sub(r'[-\s]+', '-', text).strip('-')

def migrate_blogger_to_hugo():
    if not os.path.exists(OUTPUT_DIR): os.makedirs(OUTPUT_DIR)
    
    tree = ET.parse(FEED_FILE)
    root = tree.getroot()
    entries = root.findall('atom:entry', NS)
    
    for entry in entries:
        # Filtrer uniquement les articles publiés
        p_type = entry.find('blogger:type', NS).text
        p_status = entry.find('blogger:status', NS).text
        if p_type != 'POST' or p_status != 'LIVE': continue

        title = entry.find('atom:title', NS).text
        content_html = entry.find('atom:content', NS).text
        published = entry.find('atom:published', NS).text
        
        # Extraction des Tags
        tags = [cat.attrib.get('term') for cat in entry.findall('atom:category', NS) if 'term' in cat.attrib]
        
        # Alias SEO (URL Blogger d'origine)
        alias_url = ""
        for link in entry.findall('atom:link', NS):
            if link.attrib.get('rel') == 'alternate':
                alias_url = urlparse(link.attrib.get('href')).path
                break
        
        # Création du Page Bundle
        slug = slugify(title)
        post_dir = os.path.join(OUTPUT_DIR, slug)
        os.makedirs(post_dir, exist_ok=True)
        
        # Génération du fichier Markdown
        md_content = clean_html_to_md(content_html)
        front_matter = f"""---
title: "{title}"
date: {published}
draft: false
tags: {tags}
categories: ["Conseils Élevage"]
aliases: ["{alias_url}"]
---

{md_content}
"""
        with open(os.path.join(post_dir, 'index.md'), 'w', encoding='utf-8') as f:
            f.write(front_matter)
        print(f"✅ Migré : {title}")

if __name__ == "__main__":
    migrate_blogger_to_hugo()