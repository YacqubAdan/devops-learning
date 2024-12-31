# Networking Fundamentals and Troubleshooting

## Table of Contents
- [Networking Fundamentals and Troubleshooting](#networking-fundamentals-and-troubleshooting)
  - [Table of Contents](#table-of-contents)
  - [How Does DNS Work?](#how-does-dns-work)
    - [DNS Hierarchy \& Distribution](#dns-hierarchy--distribution)
    - [DNS Resolution Process](#dns-resolution-process)
    - [Domain Registrar vs DNS Hosting Provider](#domain-registrar-vs-dns-hosting-provider)
    - [DNS Troubleshooting Lab](#dns-troubleshooting-lab)
  - [Introduction to /etc/hosts](#introduction-to-etchosts)
  - [What is Routing?](#what-is-routing)
    - [Definition and Importance](#definition-and-importance)
    - [How Routing Works](#how-routing-works)
    - [Static vs Dynamic Routing](#static-vs-dynamic-routing)
    - [Common Routing Protocols](#common-routing-protocols)
  - [Subnetting \& CIDR](#subnetting--cidr)
    - [Basics](#basics)
    - [Binary Basics](#binary-basics)
    - [Calculating Subnets and Host Ranges](#calculating-subnets-and-host-ranges)
  - [NAT (Network Address Translation)](#nat-network-address-translation)
  - [Network Troubleshooting](#network-troubleshooting)

---

## How Does DNS Work?
### DNS Hierarchy & Distribution
- **DNS Root (the boss):** Top-level, holds high-level information.
- **Top Level Domains (TLD):** Like department heads (.com, .org, .net). Example: .com managed by VeriSign.
- **Authoritative Name Servers:** Host zones for domains (e.g., google.com, x.com).
- **Domain:** Represents specific zones (like a team in a department). Contains zone files with domain records.

### DNS Resolution Process
1. User requests a domain (e.g., www.google.com).
2. DNS Resolver checks local cache.
3. If no cache, it queries the Root Server.
4. Root Server directs to the TLD Server.
5. TLD Server provides Authoritative Name Server (ANS) information.
6. ANS returns IP address to DNS Resolver.
7. DNS Resolver provides IP to the browser.

### Domain Registrar vs DNS Hosting Provider
- **Registrar:** Registers and purchases domains. Examples: Route53, GoDaddy, Cloudflare.
- **DNS Hosting:** Operates DNS NameServers. Example: Route53 hosting zones.
- **Process if Registrar and Hosting Differ:**
  1. Check local cache and /etc/hosts.
  2. Query DNS Resolver.
  3. Resolver checks local cache.
  4. Queries Root for domain.
  5. Receives TLD NS, queries TLD.
  6. TLD returns ANS.
  7. Resolver caches and returns IP to the client.

### DNS Troubleshooting Lab
- **Basic Query:** `nslookup [domain]`
- **Advanced Query:** `dig [domain]` (use `dig +short` for concise answers)

---

## Introduction to /etc/hosts
- Local file mapping domain names to IPs.
- Takes precedence over DNS for listed entries.
- **Editing:**
  ```bash
  sudo nano /etc/hosts
  127.0.0.1 example.com
  ```

---

## What is Routing?
### Definition and Importance
- **Routing:** Determines best paths for data.
- **Importance:** Efficient data delivery and network optimization.

### How Routing Works
- **Components:** Routers and Routing Tables.
- **Process:** Data traverses routers, following paths defined in tables.

### Static vs Dynamic Routing
- **Static Routing:** Manually configured, simple but not scalable.
- **Dynamic Routing:** Automatically adjusts based on conditions, scalable for large networks.

### Common Routing Protocols
- **OSPF:** Uses link-state info, fast convergence.
- **BGP:** Routes data between autonomous systems, path-vector mechanism, policy control.

---

## Subnetting & CIDR
### Basics
- **Subnetting:** Divides networks for efficiency.
- **CIDR Notation:** IP_address/prefix_length (e.g., 192.168.1.0/24).

### Binary Basics
- IP address to binary example: 192.168.1.1

### Calculating Subnets and Host Ranges
- **Formula:** `2^(32 - subnet mask bits)` gives total IPs. Subtract 2 for usable hosts.
- **Example:** 192.168.1.0/26 → 2^6 = 64 IPs (62 usable).

---

## NAT (Network Address Translation)
- **Purpose:** Converts private IPs to public IPs for external communication.
- **Types:**
  - **Static NAT:** 1-to-1 mapping.
  - **Dynamic NAT:** Maps to a pool of public IPs.
  - **PAT:** Maps multiple devices to one IP with different ports.
- **Importance for DevOps:**
  - Public IP conservation.
  - Security enhancement.
  - Simplifies network management.

---

## Network Troubleshooting
- **Goal:** Ensure smooth operations, fix issues, minimize downtime.
- **Common Issues:**
  - **Connectivity Loss:**
    - Check physical connections.
    - Verify configurations.
    - Test with `ping`.
  - **Slow Performance:** Investigate routes and congestion.
  - **IP Conflicts:** Ensure unique IPs.
  - **DNS Failures:** Verify DNS servers and records.

- **Diagnostic Commands:**
  ```bash
  ping [IP/domain]      # Test connectivity
  traceroute [domain]   # Trace packet route
  nslookup [domain]     # DNS lookup
  dig [domain]          # Advanced DNS lookup
  ```

