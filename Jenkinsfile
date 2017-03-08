try{
node {

    // Mark the code checkout 'Checkout'....
    stage ('Checkout'){
        // // Get some code from a GitHub repository
    git url: 'https://github.com/azouz34200/global_infrastructure.git'
    // Get the Terraform tool.
    }
    def tfHome = tool name: 'terraform', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
    env.PATH = "${tfHome}:${env.PATH}"
    wrap([$class: 'AnsiColorBuildWrapper', colorMapName: 'xterm']) {
    withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'admin_global_infra', variable: 'AWS_ACCESS_KEY_ID']]) {
    stage('Global Plan'){
            // Output Terraform version
            sh "cd global && terraform plan -var-file=env_global.tfvars -state=terraform-global.tfstate"

    }
    stage 'Global Apply'
    stage 'Dev Plan'
    stage 'Dev Apply'
    stage 'Production Plan'
    stage 'Production Apply'
    }

    }

    }
  }
