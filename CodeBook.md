1. Features.txt was imported for the variable names for the X files.
2. The test data was read from the 3 text files, X_test.txt, Y_test.txt and subject_test.txt
3. The 3 files were then combined to form the test data set.
4. The train data was read from the 3 text files in the train folder. X_train.txt, Y_train.txt and subject_train.txt
5. The 3 files were then combined to form the train data set.
6. The test and train data set were then combined together.
7. Only variables with the word 'mean' or 'std' in them were extracted into a new dataset
8. Activity labels had their values replaced with the textual description of the activity performed
9. The variables names were transformed to lower cases, and abbreviations were replaced with the full spelling. "."s were also removed.
10. Then the average for all the variables were computed for each activity and subject value.


Here are the final variables in the data set.

"activity_label" -> the activity performed
"subject" -> the subject the data is collected from     
"tbodyaccelerationmeanx"                        
"tbodyaccelerationmeany"                       
"tbodyaccelerationmeanz"                        
"tbodyaccelerationstandarddeviationx"          
"tbodyaccelerationstandarddeviationy"           
"tbodyaccelerationstandarddeviationz"          
"tgravityaccelerationmeanx"                     
"tgravityaccelerationmeany"                    
"tgravityaccelerationmeanz"                     
"tgravityaccelerationstandarddeviationx"       
"tgravityaccelerationstandarddeviationy"        
"tgravityaccelerationstandarddeviationz"       
"tbodyaccelerationjerkmeanx"                    
"tbodyaccelerationjerkmeany"                   
"tbodyaccelerationjerkmeanz"                    
"tbodyaccelerationjerkstandarddeviationx"      
"tbodyaccelerationjerkstandarddeviationy"       
"tbodyaccelerationjerkstandarddeviationz"      
"tbodygyroscopemeanx"                           
"tbodygyroscopemeany"                          
"tbodygyroscopemeanz"                           
"tbodygyroscopestandarddeviationx"             
"tbodygyroscopestandarddeviationy"              
"tbodygyroscopestandarddeviationz"             
"tbodygyroscopejerkmeanx"                       
"tbodygyroscopejerkmeany"                      
"tbodygyroscopejerkmeanz"                       
"tbodygyroscopejerkstandarddeviationx"         
"tbodygyroscopejerkstandarddeviationy"          
"tbodygyroscopejerkstandarddeviationz"         
"tbodyaccelerationmagmean"                      
"tbodyaccelerationmagstandarddeviation"        
"tgravityaccelerationmagmean"                   
"tgravityaccelerationmagstandarddeviation"     
"tbodyaccelerationjerkmagmean"                  
"tbodyaccelerationjerkmagstandarddeviation"    
"tbodygyroscopemagmean"                         
"tbodygyroscopemagstandarddeviation"           
"tbodygyroscopejerkmagmean"                     
"tbodygyroscopejerkmagstandarddeviation"       
"fbodyaccelerationmeanx"                        
"fbodyaccelerationmeany"                       
"fbodyaccelerationmeanz"                        
"fbodyaccelerationstandarddeviationx"          
"fbodyaccelerationstandarddeviationy"           
"fbodyaccelerationstandarddeviationz"          
"fbodyaccelerationmeanfreqx"                    
"fbodyaccelerationmeanfreqy"                   
"fbodyaccelerationmeanfreqz"                    
"fbodyaccelerationjerkmeanx"                   
"fbodyaccelerationjerkmeany"                    
"fbodyaccelerationjerkmeanz"                   
"fbodyaccelerationjerkstandarddeviationx"       
"fbodyaccelerationjerkstandarddeviationy"      
"fbodyaccelerationjerkstandarddeviationz"       
"fbodyaccelerationjerkmeanfreqx"               
"fbodyaccelerationjerkmeanfreqy"                
"fbodyaccelerationjerkmeanfreqz"               
"fbodygyroscopemeanx"                           
"fbodygyroscopemeany"                          
"fbodygyroscopemeanz"                           
"fbodygyroscopestandarddeviationx"             
"fbodygyroscopestandarddeviationy"              
"fbodygyroscopestandarddeviationz"             
"fbodygyroscopemeanfreqx"                       
"fbodygyroscopemeanfreqy"                      
"fbodygyroscopemeanfreqz"                       
"fbodyaccelerationmagmean"                     
"fbodyaccelerationmagstandarddeviation"         
"fbodyaccelerationmagmeanfreq"                 
"fbodybodyaccelerationjerkmagmean"              
"fbodybodyaccelerationjerkmagstandarddeviation"
"fbodybodyaccelerationjerkmagmeanfreq"          
"fbodybodygyroscopemagmean"                    
"fbodybodygyroscopemagstandarddeviation"        
"fbodybodygyroscopemagmeanfreq"                
"fbodybodygyroscopejerkmagmean"                 
"fbodybodygyroscopejerkmagstandarddeviation"   
"fbodybodygyroscopejerkmagmeanfreq" 