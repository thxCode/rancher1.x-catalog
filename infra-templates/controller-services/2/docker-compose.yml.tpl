version: '2'
services:
  restarting-controller:
    tty: true
    image: maiwj/rancher1.x-restarting-controller:2.0.2
    labels:
      io.rancher.container.create_agent: 'true'
      io.rancher.container.agent.role: 'environment'
    environment:
      INTOLERABLE_INTERVAL: '${RESTARTING_INTOLERABLE_INTERVAL}'
      TOLERABLE_COUNTS: '${RESTARTING_TOLERABLE_COUNTS}'
      IGNORE_LABEL: '${RESTARTING_IGNORE_LABEL}'
