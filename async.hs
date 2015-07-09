do a1 <- async (getURL url1)
       a2 <- async (getURL url2)
       page1 <- wait a1
       page2 <- wait a2