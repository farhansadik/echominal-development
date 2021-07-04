# Contribute with Git Branch

**Git Branching**

GIT Branching is the strategy or systematic procedure of creating the branch and follow that up for merging that with the main copy of the main branch of the codebase. Before getting into the GIT branch, Let’s see why we need a branch.

![tes](images/contributor_big.PNG)

**Developer Workflow**

1. Developer can deploy code to `development` branch. For testing purposes. 
2. Developer must have to **review** every code before **merging**. 

**Contributing Workflow**

> **Contributor can't merge/push their code to `master` branch.**

1. Clone specific branch from `code owener` 

   ```bash
   git clone -b development https://github.com/farhansadik/echominal-development.git
   ```

2. Redirect to this specific folder `<remote_repo>` / change your branch 

   ```bash
   # redirect 
   cd echominal-development
   
   # change branch
   git checkout development
   ```

3. Create/modify/add/commit your code. 

   > make sure you're in`development` branch
   > ```bash
   > git branch -v
   > ```

4. Push/deploy your code to `code owener`

   ```bash
    git push origin development
   ```

5. Done!!



Thank You, <br>
Farhan Sadik