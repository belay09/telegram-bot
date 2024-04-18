HOST?=https://telegram-lvvr7zi8q-belays-projects.vercel.app/

all:

ping:
	curl $(HOST)/health

webhook:
	@test -n "$(BOT_TOKEN)"
	@echo "bot token: $(BOT_TOKEN)"
	curl -X POST https://api.telegram.org/bot$(BOT_TOKEN)/setWebhook \
	-H "Content-type: application/json" \
	-d '{"url": "https://telegram-lvvr7zi8q-belays-projects.vercel.app"}'
