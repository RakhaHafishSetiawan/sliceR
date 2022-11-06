slice_data <- function(Data, RowAmount){

  if (!require("dplyr"))
    install.packages("dplyr")
  library(dplyr, quietly = TRUE)

  if (!require("magrittr"))
    install.packages("magrittr")
  library(magrittr, quietly = TRUE)

  yourSample <- sample(nrow(Data), 1*nrow(Data), replace = FALSE)
  dataRandom <- data.frame(Data)[yourSample,]
  print("Data rows has been successfully shuffled")

  ans <- readline(prompt = "Would you like to part your data? (yes/no) ")

  if(ans == "yes"){

    choice <- readline(prompt = "By precentage or whole number? (precentage/row_amount) ")

    if(choice == "precentage") {

      print("To ensure precision, please acknowledge that the data partitioning will only succeed if the resultant from this calculation is a whole number")
      frac <- readline(prompt = "Please enter precentage for training data ")
      frac <- as.numeric(frac)

      trainAmount <- frac*RowAmount/100
      dataTrain <- dataRandom %>%
        slice(1:trainAmount)

      testAmount <- trainAmount + 1
      dataTest <- dataRandom %>%
        slice(testAmount:RowAmount)

      View(dataTrain)
      View(dataTest)

      print("Your data has been succesfully parted, please check your Global Environment for dataTrain and dataTest")

    } else if (choice == "row_amount"){

      rowAmount_Train <- readline(prompt = "Please enter row amount for training data ")
      rowAmount_Train <- as.numeric(rowAmount_Train)

      dataTrain <- dataRandom %>%
        slice(1:rowAmount_Train)

      testAmount <- rowAmount_Train + 1
      dataTest <- dataRandom %>%
        slice(testAmount:RowAmount)

      View(dataTrain)
      View(dataTest)

      print("Your data has been succesfully parted, please check your Global Environment for dataTrain and dataTest")

    }

  } else if (ans == "no") {

    View(dataRandom)
    print("Task is done succesfully, please check your Global Environment for dataRandom")

  }

}
