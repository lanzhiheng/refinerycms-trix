buildFragment = (id, name, originValue) ->
  # More detail https://github.com/basecamp/trix
  input = document.createElement('input')
  input.id = id
  input.type = 'hidden'
  input.name = name
  input.value = originValue

  trixEditor = document.createElement('trix-editor')
  trixEditor.setAttribute('input', id)
  trixEditor.classList = ['trix-content']
  trixEditor.style.minHeight = '40em'

  wrapper = document.createElement('div')
  wrapper.classList = 'trix-wrapper'
  wrapper.style.paddingTop = '5px'
  wrapper.style.fontSize = '18px'
  wrapper.insertBefore(input, null)
  wrapper.insertBefore(trixEditor, null)
  wrapper

TrixEditor =
  init: () ->
    document.querySelectorAll('.visual_editor.widest').forEach (item) ->
      originValue = item.textContent
      wrapper = buildFragment(item.id, item.name, originValue)
      item.replaceWith(wrapper)

$(document).on 'ready page:load', () ->
  TrixEditor.init();
