#= require jquery
#= require jquery_ujs
#= require jquery.cookie
#= require jstz
#= require browser_timezone_rails/set_time_zone
#= require bootstrap-sprockets
#= require best_in_place
#= require Sortable.min
#= require toastr.min
#= require ladda/spin.min
#= require ladda/ladda.min
#= require ladda/ladda.jquery.min
#= require jquery.overlay.min
#= require jquery.bootgrid.min
#= require perfect-scrollbar.jquery.min
#= require moment
#= require moment/ja
#= require jquery.readyselector
#= require i18n
#= require i18n/translations
#= require_tree .

$(document).ready ->
  $("[data-toggle='popover']").popover({ container: "body" })
  $("[data-toggle='tooltip']").tooltip({ container: "body" })
  $(".dropdown-toggle").dropdown()
  $(".best_in_place").best_in_place()
  $(".carousel").carousel()
  $(".hover-scroll").perfectScrollbar()

  $(document).on "shown.bs.modal", (e) ->
    $("[autofocus]", e.target).focus()

  $(document).on "click", ".collapse-btn", (e) ->
    if $(this).hasClass("collapsed")
      $(this).text(I18n.t("js.common.collapse.expand"))
    else
      $(this).text(I18n.t("js.common.collapse.close"))