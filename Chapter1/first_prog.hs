messyMain :: IO()
messyMain = do
    print "Who is the email for?"
    recepient <- getLine
    print "What is the title?"
    title <- getLine
    print "Who is the author?"
    author <- getLine
    print (createEmail recepient title author)


toPart recepient = "Dear " ++ recepient ++ ",\n"
bodyPart bookTitle = "Thanks for buying title " ++ bookTitle ++ ".\n"
fromPart author = "Thanks,\n" ++ author

createEmail recepient bookTitle author = toPart recepient ++
                                         bodyPart bookTitle ++
                                         fromPart author
