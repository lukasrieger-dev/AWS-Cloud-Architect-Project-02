# AWS Cloud Architect Project 2: Design, Provision and Monitor AWS Infrastructure at Scale
Project 2 of the Udacity AWS Cloud Architect Nanodegree program

In this project, you will plan, design, provision, and monitor infrastructure in AWS using industry-standard and open source tools. You will practice the skills you have learned throughout the course to optimize infrastructure for cost and performance. You will also use Terraform to provision and configure AWS services in a global configuration.

## Infrastructure Cost
[Initial Estimate](https://calculator.aws/#/estimate?id=4d918277177acecbb62e14fed30b8d65897e5697)

### Reduced Costs
Changes:
- Smaller RDS instances
- Smaller and less EC2 instances
- Instead of on-demand instances use reserved instances for one year
- Less traffic

Reasons:
- Reserved instances reduce cost significantly, however this has the downside that the infrastrcture becomes rather inflexible. Since it is just for one year it's not too bad.
- Smaller and less EC2 and RDS instances might reduce performance espacially in case of traffic peeks but the cost savings are big.
- Since the EC2 instances and the RDS instances are smaller, we have to plan for a slower growth of the user base, therefore the estimated traffic can also be reduced.


### Increased Costs
Changes:
- Larger RDS instances
- Larger EC2 instances
- More EC2 instances
- More traffic

Reasons:
- With the additional EC2 instances we can scale up and down thus improving application performance
- With larger RDS instances the database performance improves so that we are prepared for further growth of the application.
- New users can be onboarded faster (e.g. new universities as did facebook) so that the business can grow faster without affecting the user experience
- A complete infrastructure replication in another region could also be possible, yet this seems to be oversized for a social media app which is just starting up.