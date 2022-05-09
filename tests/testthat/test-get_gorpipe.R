# For get_gorpipe to work - gorpipe has to be added to PATH
test_that("get_gorpipe works", {
    gorpipe_path <- system("which gorpipe", intern=T)
    skip_if(!is.null(attr(gorpipe_path, "status"))) # gorpipe not added to PATH
    gorpipe <- get_gorpipe(gorpipe_path)
    df <- gorpipe("GORROWS -p chr1:0-10")
    expect_equal(nrow(df), 10)
})
