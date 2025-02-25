<h1>
  <img src="./assets/logo.svg" align="left" height="46px" alt="xenforo logo"/>
  <span>Xenforo-docker-stack</span>
</h1>

**Using `Xenforo-docker-stack` for deploy your self-hosted Xenforo forum with `Docker`.
This project use [docker-xenforo](https://github.com/xfrocks/docker-xenforo.git) as base.**

## Installation

### Prerequisites
* Installed Docker
* Xenforo forum files
* [Task](https://github.com/go-task/task) (not necessary)

### Clone
```bash
git clone --recursive https://github.com/3ayazaya/xenforo-docker-stack
cd xenforo-docker-stack
```
### Set environment
```bash
cp .env.example .env
vim .env
```
### Put xenforo files
```bash
cp -R /xenforo/upload/* ./xenforo
```
### Build
```bash
task build
```
or
```bash
docker compose -f docker-compose.yaml build
```
### Run
```bash
task run
```
or
```bash
docker compose -f docker-compose.yaml up -d
```