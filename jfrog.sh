#!/bin/bash

# -----------------------------------------------
# 🧰 Step 1: Update package list
# -----------------------------------------------
echo "🔄 Updating system packages..."
sudo apt update -y

# -----------------------------------------------
# 📁 Step 2: Change to /opt directory
# -----------------------------------------------
echo "📂 Changing directory to /opt..."
cd /opt || exit

# -----------------------------------------------
# 📥 Step 3: Download Artifactory OSS 7.9.2 tar.gz
# -----------------------------------------------
echo "⬇️ Downloading Artifactory OSS 7.9.2..."
wget https://releases.jfrog.io/artifactory/bintray-artifactory/org/artifactory/oss/jfrog-artifactory-oss/7.9.2/jfrog-artifactory-oss-7.9.2-linux.tar.gz

# -----------------------------------------------
# 📦 Step 4: Extract the archive
# -----------------------------------------------
echo "📦 Extracting the archive..."
tar -xvf jfrog-artifactory-oss-7.9.2-linux.tar.gz

# -----------------------------------------------
# 🚀 Step 5: Start Artifactory
# -----------------------------------------------
echo "🚀 Starting Artifactory..."
cd artifactory-oss-7.9.2/app/bin/ || exit
./artifactory.sh start

# -----------------------------------------------
# ✅ Step 6: Status
# -----------------------------------------------
echo "✅ Artifactory startup initiated. Access it at http://localhost:8082/"
