
# test for MDP, hasn't finished
up <- matrix(c(1,0,0,0,0,0,0,0,0,0,0,0,
               1,0,0,0,0,0,0,0,0,0,0,0,
               1,0,0,0,0,0,0,0,0,0,0,0,
               0,0,0,1,0,0,0,0,0,0,0,0,
               0,0,0,1,0,0,0,0,0,0,0,0,
               0,0,0,1,0,0,0,0,0,0,0,0,
               0,0,0,0,0,0,1,0,0,0,0,0,
               0,0,0,0,0,0,1,0,0,0,0,0,
               0,0,0,0,0,0,1,0,0,0,0,0,
               0,0,0,0,0,0,0,0,0,1,0,0,
               0,0,0,0,0,0,0,0,0,1,0,0,
               0,0,0,0,0,0,0,0,0,1,0,0), nrow = 12, byrow=TRUE)

down <- matrix(c(0,0,1,0,0,0,0,0,0,0,0,0,
                 0,0,1,0,0,0,0,0,0,0,0,0,
                 0,0,1,0,0,0,0,0,0,0,0,0,
                 0,0,0,0,0,1,0,0,0,0,0,0,
                 0,0,0,0,0,1,0,0,0,0,0,0,
                 0,0,0,0,0,1,0,0,0,0,0,0,
                 0,0,0,0,0,0,0,0,1,0,0,0,
                 0,0,0,0,0,0,0,0,1,0,0,0,
                 0,0,0,0,0,0,0,0,1,0,0,0,
                 0,0,0,0,0,0,0,0,0,0,0,1,
                 0,0,0,0,0,0,0,0,0,0,0,1,
                 0,0,0,0,0,0,0,0,0,0,0,1), nrow = 12, byrow=TRUE)

left <- matrix(c(1,0,0,0,0,0,0,0,0,0,0,0,
                 0,1,0,0,0,0,0,0,0,0,0,0,
                 0,0,1,0,0,0,0,0,0,0,0,0,
                 0,1,0,0,0,0,0,0,0,0,0,0,
                 0,1,0,0,0,0,0,0,0,0,0,0,
                 0,1,0,0,0,0,0,0,0,0,0,0,
                 0,0,0,0,1,0,0,0,0,0,0,0,
                 0,0,0,0,1,0,0,0,0,0,0,0,
                 0,0,0,0,1,0,0,0,0,0,0,0,
                 0,0,0,0,0,0,1,0,0,0,0,0,
                 0,0,0,0,0,0,1,0,0,0,0,0,
                 0,0,0,0,0,0,1,0,0,0,0,0), nrow = 12, byrow=TRUE)

right <- matrix(c(0,0,0,0,1,0,0,0,0,0,0,0,
                  0,0,0,0,1,0,0,0,0,0,0,0,
                  0,0,0,0,1,0,0,0,0,0,0,0,
                  0,0,0,0,0,0,0,1,0,0,0,0,
                  0,0,0,0,0,0,0,1,0,0,0,0,
                  0,0,0,0,0,0,0,1,0,0,0,0,
                  0,0,0,0,0,0,0,0,0,0,1,0,
                  0,0,0,0,0,0,0,0,0,0,1,0,
                  0,0,0,0,0,0,0,0,0,0,1,0,
                  0,0,0,0,0,0,0,0,0,1,0,0,
                  0,0,0,0,0,0,0,0,0,0,1,0,
                  0,0,0,0,0,0,0,0,0,0,0,1), nrow = 12, byrow=TRUE)

Actions <- list(up = up, down = down, left = left, right = right)

Rewards <- matrix(c(-3,5,5,5,5,5,5,5,5,5,5,5,
                    -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
                     5,5,-3,5,5,5,5,5,5,5,5,5,
                    -3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,
                    -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
                    -3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,
                    -3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,
                    -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
                    -3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,
                     5,5,5,5,5,5,5,5,5,-3,5,5,
                    -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
                    -3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3,-3), nrow = 12, byrow=TRUE)

solver <- mdp_policy_iteration(P = Actions, R = Rewards, discount = 0.1)









