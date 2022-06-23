# sentinel-policy-aws-ec2
Simple Allow Type for AWS Instances enforced via Sentinel
#
## To add/remove allowed instance types
- Modify the following parameter in  ```./aws/restrict-ec2-instance.type.sentinel```

  - ```allowed_types = ["t2.micro", "t2.medium"]```
  
# <br>

## Modify the Policy Enforcement Level
- Modify the following parameter in ```./sentinel.hcl```
  - ```enforcement_level = "hard-mandatory"```



<br>

| Available Options  ||
| --- | ----------- |
|```advisory```|The policy is allowed to fail. However, a warning should be shown to the user or logged.|
|```soft-mandatory```|The policy must pass unless an override is specified. The semantics of "override" are specific to each Sentinel-enabled application. The purpose of this level is to provide a level of privilege separation for a behavior. Additionally, the override provides non-repudiation since at least the primary actor was explicitly overriding a failed policy.|
|```hard-mandatory``` |The policy must pass no matter what. The only way to override a hard mandatory policy is to explicitly remove the policy. Hard mandatory is the default enforcement level. It should be used in situations where an override is not possible.|