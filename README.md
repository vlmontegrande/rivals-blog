# Rivals of Aether Blog - blog.vlmontegrande.com

This is my personal blog for the platform fighting game Rivals of Aether. It's built with Eleventy, a static site generator, and containerized with Docker + nginx on my self-hosted web server. The localhost on the server is exposed via a Cloudflare tunnel.

## Usage

Firstly, install Docker if it's not already installed.

### Build the Docker Image

```
docker build -t vlmontegrande/rivals-blog .
```

### Running the Container

```
docker run -d -p 80:80 vlmontegrande/rivals-blog
```

### Accessing the site

Open the browser and type ```http://localhost:80```
