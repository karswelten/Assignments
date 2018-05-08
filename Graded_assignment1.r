
library(tidyverse) 

df1 <- as.data.frame(matrix(runif(20*2), ncol=20) )
head(df1)

df2 <- df1 %>%
  gather(Key, Value, V1:V20)

head(df2)

df3 <- as.data.frame(read.table(header=TRUE, text='
      id        V_1       V_2                
          1  42.467573  -87.810047     
          2  42.049148  -88.273029
          3  39.110539  -90.324080
                       '))

head(df3)

df4 <- as.data.frame(read.table(header=TRUE, text='
     V_3            V_4         id                 
      one         1h            1
      two         1h            1
      three       8h            2
      four        1h            4
'))

head(df4)

df5 <- full_join(df3, df4)
df5
