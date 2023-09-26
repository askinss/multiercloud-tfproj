provider "aws" {
  region = "us-west-2"
}

provider "google" {
  credentials = file("path/to/gcp-credentials.json")
  project     = "your-project-id"
}

provider "azure"  {
  
}