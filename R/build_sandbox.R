#' Build objects to play with
#'
#' @description `build_sandbox` creates objects to play around with in those
#' moments when you briefly forget how R works or what computers are.
#'
#' @return The function creates: `my_list`, which contains numeric,
#' character, and logical elements; `my_nlist`, which is nested; `my_vector`,
#' which contains an array of numeric values; `my_df`, which contains numeric
#' and character columns.
#'
#' @details The sandbox objects can be removed using the `remove_sandbox`
#' function.
#'
#' @seealso [remove_sandbox()]
#' @export
#'
#' @examples
build_sandbox <- function() {

  my_list <<- list(1, 'a', TRUE, 'bleh', 5.51)

  my_nlist <<- list(
    colors = list('green', 'blue', 'red', 'purple'),
    weather = 'sunny',
    numbers = list(31, 456, 412, 46, 897, 2),
    cat_names = list(
      food_names = c('Hummus', 'Falafel', 'Waffle', 'Pancake'),
      world_leader_puns = c('King George the Purred', 'Margaret Scratcher', 'Meow Zedong'),
      silly_names = c('Mittens', 'Flop', 'Kitty', 'Dog')
    )
  )

  my_vector <<- c(1, 5, 3, 67, 8, 32, 5, 2)

  my_df <<- data.frame(
    name = c('jeff', 'ali', 'fred', 'jan'),
    age = c(29, 41, 59, 55),
    fav_color = c('green', 'blue', 'red', 'purple'),
    height = c(44.1, 29.6, 97.1, 28.8)
  )

  # Print what is in the sandbox
  cat('Sandbox objects: my_list, my_nlist, my_vector, my_df')
}
