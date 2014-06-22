function! aizu#jikanwari#get()
  let s:v = vital#of("vital")
  let s:http = s:v.import("Web.HTTP")
  let settings = {}
  let settings["url"] = ""
  let settings["method"] = "GET"
endfunction

