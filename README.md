# **Unofficial Docker Image for Odoo**

Welcome! This is an unofficial Docker image built for Odoo, especially useful for developers. Let's dive into why this might be something you'd like to try!

### **Why Use This Image?**

1. **Access to Internal Modules:** This image gives you the chance to peek inside Odoo's internal modules, allowing you to see all the code for these models.
2. **Odoo Job Queue Support:** Unlike the official image, this one supports the Odoo job queue (no more annoying HTTP 500 error!).

### **How to Use This Image**

No need to build the image yourself; I've already done that for you! You can get started right away by running the container.

## Modes

There are two ways (modes) to run this image: development and production.

### **Development Mode**

In this mode, Odoo doesn't start automatically. You'll need to start it manually using a code editor like VSCode or PyCharm.

**To Start:**

```
MODE=dev docker-compose up -d
# or
MODE=development docker-compose up -d
```

**If you use VSCode:** Here's a sample configuration for launch.json

```
jsonCopy code
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Odoo",
            "type": "python",
            "request": "launch",
            "cwd": "${workspaceRoot}",
            "program": "${workspaceRoot}/odoo/odoo-bin",
            "args": [
                "--db_host=${env:DB_HOST}",
                "--db_port=${env:DB_PORT}",
                "--db_user=${env:DB_USER}",
                "--db_password=${env:DB_PASSWORD}",
                "--limit-time-real=100000",
                "--dev",
                "xml"
            ],
            "console": "integratedTerminal",
            "gevent": true,
        }
    ]

```

### **Production Mode**

In this mode, everything is set up to run smoothly.

**To Start:**

```
MODE=prod docker-compose up -d
# or
MODE=production docker-compose up -d
```

### **Want to Build It Yourself?**

If you're curious and want to build the image yourself, you can run:

```
sh build_image/build.sh
```

Feel free to modify **`build.sh`** if you want to change the image name.

### **Conclusion**

This unofficial Docker image for Odoo makes development more exciting and resolves some issues found in the official version. Give it a try, and happy coding!
