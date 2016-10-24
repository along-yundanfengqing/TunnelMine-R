# LVQ - Learning Vector Quantization
## ====================

lvqModel <- train(frmla, data=json_features_all_pcaps_df, method = "lvq", trControl=train_ctrl, preProcess = c("center", "scale"))
#lvqModel <- train(frmla, data=json_features_all_pcaps_df, method = "lvq", trControl=train_ctrl, preProcess = c("center", "scale"), tuneLength = 10)

#tuningGrid <- expand.grid(size=c(5,10,15,20,25,30), k=c(1,2,3,4,5,6))
#lvqModel <- train(frmla, data=json_features_all_pcaps_df, method = "lvq", trControl=train_ctrl, preProcess = c("center", "scale"), tuneGrid = tuningGrid)

plot(lvqModel)

lvqModel$pred[order(lvqModel$pred$Resample, lvqModel$pred$rowIndex),]
lvqModel
lvqModel$finalModel
lvqModel$results
lvqModel$bestTune

confusionMatrix(lvqModel)