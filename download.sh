set -e
# Configure download location
DOWNLOAD_PATH="$DATA_PATH"
if [ "$DATA_PATH" == "" ]; then
    echo "DRQA_DATA not set; downloading to default path ('datasets')."
    DOWNLOAD_PATH="."
fi
DATASET_PATH="$DOWNLOAD_PATH/data"

# Download Wikidata5m
# wget -O wikidata5m_transductive.tar.gz https://www.dropbox.com/s/6sbhm0rwo4l73jq/wikidata5m_transductive.tar.gz?dl=1
# wget -O wikidata5m_text.txt.gz https://www.dropbox.com/s/7jp4ib8zo3i6m10/wikidata5m_text.txt.gz?dl=1
tar -xzvf "wikidata5m_transductive.tar.gz" -C  "./data"
gzip -cd "wikidata5m_text.txt.gz" > "./data/wikidata5m_text.txt"
tar -xzvf "wikidata5m_alias.tar.gz" -C  "./data"



