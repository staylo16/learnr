
#' Set tutorial options
#'
#' Set various tutorial options that control the display and evaluation of
#' exercises.
#'
#' @param exercise.cap Caption for exercise chunk (defaults to the engine's icon or the combination of the engine and \code{" code"}).
#' @param exercise.eval Whether to pre-evaluate the exercise so the reader can
#'   see some default output (defaults to \code{FALSE}).
#' @param exercise.timelimit Number of seconds to limit execution time to
#'   (defaults to \code{30}).
#' @param exercise.lines Lines of code for exercise editor (defaults to the
#'   number of lines in the code chunk).
#' @param exercise.blanks A regular expression to be used to identify blanks in
#'   submitted code that the user should fill in. If `TRUE` (default), blanks
#'   are three or more underscores in a row. If `FALSE`, blank checking is not
#'   performed.
#' @param exercise.checker Function used to check exercise answers
#'   (e.g., `gradethis::grade_learnr()`).
#' @param exercise.error.check.code A string containing R code to use for checking
#'   code when an exercise evaluation error occurs (e.g., `"gradethis::grade_code()"`).
#' @param exercise.completion Use code completion in exercise editors.
#' @param exercise.diagnostics Show diagnostics in exercise editors.
#' @param exercise.startover Show "Start Over" button on exercise.
#' @param exercise.reveal_solution Whether to reveal the exercise solution if
#'   a solution chunk is provided.
#'
#' @export
tutorial_options <- function(exercise.cap = NULL,
                             exercise.eval = FALSE,
                             exercise.timelimit = 30,
                             exercise.lines = NULL,
                             exercise.blanks = NULL,
                             exercise.checker = NULL,
                             exercise.error.check.code = NULL,
                             exercise.completion = TRUE,
                             exercise.diagnostics = TRUE,
                             exercise.startover = TRUE,
                             exercise.reveal_solution = TRUE)
{
  # string to evalute for setting chunk options  %1$s
  set_option_code <- 'if (!missing(%1$s)) knitr::opts_chunk$set(%1$s = %1$s)'

  # set options as required
  eval(parse(text = sprintf(set_option_code, "exercise.cap")))
  eval(parse(text = sprintf(set_option_code, "exercise.eval")))
  eval(parse(text = sprintf(set_option_code, "exercise.timelimit")))
  eval(parse(text = sprintf(set_option_code, "exercise.lines")))
  eval(parse(text = sprintf(set_option_code, "exercise.blanks")))
  eval(parse(text = sprintf(set_option_code, "exercise.checker")))
  eval(parse(text = sprintf(set_option_code, "exercise.error.check.code")))
  eval(parse(text = sprintf(set_option_code, "exercise.completion")))
  eval(parse(text = sprintf(set_option_code, "exercise.diagnostics")))
  eval(parse(text = sprintf(set_option_code, "exercise.startover")))
  eval(parse(text = sprintf(set_option_code, "exercise.reveal_solution")))
}
