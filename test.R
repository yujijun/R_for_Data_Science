#### test dplyr ###
df <- data.frame(
  name = c("Alice", "Alice", "Bob", "Bob", "Carol", "Carol"),
  type = c("english", "math", "english", "math", "english", "math")
)

#增加一列
score2020 <- c(80.2, 90.5, 92.2, 90.8, 82.5, 84.6)
df_new <- df %>% mutate(newscores=score2020) #chuan到第一个参数的位置

# select
df %>% select(name) #there is no need to add "
df %>% select(-name,type)

# filter
df_new %>% filter(newscores >= 90, type == "english") #no need any of logical judgement

#summarise
df_new %>%
  group_by(name) %>%
  summarise(n= n()) %>%
  count(score2020,wt = score2020)


