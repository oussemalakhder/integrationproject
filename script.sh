ssh vm1@10.0.2.15
git clone https://github.com/oussemalakhder/integrationproject.git 
pod=$(kubectl get pods -n jenkins | awk {'print $1'} | grep web-app)
kubectl cp /home/vm1/integrationproject/dockerbuild/index.html $pod:/var/www/html/
exit
