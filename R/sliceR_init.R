sliceR_init <- function(Data, RowAmount){

  if (!require("dplyr"))
    install.packages("dplyr")
  library(dplyr, quietly = TRUE)

  if (!require("magrittr"))
    install.packages("magrittr")
  library(magrittr, quietly = TRUE)

  yourSample <<- sample(nrow(Data), 1*nrow(Data), replace = FALSE)
  dataRandom <<- data.frame(Data)[yourSample,]
  print("Data rows have been successfully shuffled")

  ans <<- readline(prompt = "Would you like to part your data? (yes/no) ")

  if(ans == "yes"){

    frac <<- readline(prompt = "Please enter fraction for training data ")
    frac <<- as.numeric(frac)

    trainAmount <<- round(frac*RowAmount)
    dataTrain <<- dataRandom %>%
      slice(1:trainAmount)

    testAmount <<- trainAmount + 1
    dataTest <<- dataRandom %>%
      slice(testAmount:RowAmount)

    View(dataTrain)
    View(dataTest)

    print("Task was done succesfully, please check your Global Environment for dataTrain and dataTest")

  }  else if (ans == "no") {

    View(dataRandom)
    print("Task was done succesfully, please check your Global Environment for dataRandom")

  }

}
