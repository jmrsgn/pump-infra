
## 🧪 Local Development

### 🛠 Manual

If this is your first time running the project (or you want full control):

1.  **Build the service images**

```bash
docker build -t pump ../pump
docker build -t pump-auth-service ../pump-auth-service
  ```

2.  **Create a .env file**

This holds things like JWT_SECRET, ports, and other config.
Make sure both services use the same JWT secret

3. **Start everything**

```bash
docker compose up
```
You should see MongoDB, Pump Auth, and Pump all starting up and talking to each other

---
### ⚡ Auto-rebuild

If you’ve already set things up and just changed some code:
```bash
./docker-rebuild.sh
```
This script:
- rebuilds the images
- restarts all containers
- saves you from typing the same commands again

---
### 🧠 Helpful notes

- If something behaves weirdly, try:

	```bash
	docker compose down -v
	docker compose up
	```
	(Fresh containers, fresh state)
- Logs are your best friend:

	```bash
	docker compose logs -f pump
	docker compose logs -f pump-auth-service
	```