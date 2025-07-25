# Deployment Instructions

## GitHub Pages Deployment

This personal website is designed to be deployed on GitHub Pages. Follow these steps to deploy:

### 1. Create GitHub Repository

1. Go to GitHub and create a new repository
2. Name it `yatonglan.github.io` (replace with your GitHub username)
3. Make it public

### 2. Upload Website Files

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/yatonglan/yatonglan.github.io.git
   ```

2. Copy all files from this directory to the cloned repository

3. Commit and push the changes:
   ```bash
   git add .
   git commit -m "Initial website setup"
   git push origin main
   ```

### 3. Enable GitHub Pages

1. Go to your repository settings on GitHub
2. Scroll down to "GitHub Pages" section
3. Select "Deploy from a branch"
4. Choose "main" branch and "/ (root)" folder
5. Click "Save"

### 4. Custom Domain (Optional)

If you want to use a custom domain:
1. Add your domain to the repository settings
2. Update the `url` field in `_config.yml`
3. Create a CNAME file in the root directory with your domain

## Local Development

To test the website locally:

### Using Docker (Recommended)

```bash
docker compose up
```

Then visit `http://localhost:4000`

### Using Jekyll (Alternative)

1. Install Ruby and Jekyll
2. Run `bundle install`
3. Run `bundle exec jekyll serve`
4. Visit `http://localhost:4000`

## Customization

### Update Personal Information

1. Edit `_config.yml` for site-wide settings
2. Modify `_data/authors.yml` for author information
3. Update `_pages/about.md` for the main page content

### Add Content

- **Publications**: Add files to `_publications/` directory
- **Blog Posts**: Add files to `_posts/` directory
- **CV**: Edit `_pages/cv.md`

### File Structure

```
personal-website/
├── _config.yml          # Site configuration
├── _data/
│   ├── authors.yml      # Author information
│   └── navigation.yml   # Navigation menu
├── _pages/
│   ├── about.md         # Home page content
│   └── cv.md           # CV page
├── _posts/             # Blog posts
├── _publications/      # Publications
└── images/             # Images and assets
```

## Troubleshooting

### Common Issues

1. **Build Errors**: Check that all YAML front matter is properly formatted
2. **Missing Images**: Ensure images are in the `images/` directory
3. **Navigation Issues**: Verify `_data/navigation.yml` is correctly formatted

### Support

For issues with the Academic Pages template, visit:
https://github.com/academicpages/academicpages.github.io

## Contact

For questions about this specific website, contact: yatong.lan@example.com 