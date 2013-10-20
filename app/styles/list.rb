Teacup::Stylesheet.new :list do
  style :root,
    backgroundColor: UIColor.blueColor
  style :label,
    origin: [0, 0],
    size: [320, 44],
    text: 'Current Locations',
    font: UIFont.fontWithName("HelveticaNeue-Light", size: 16)
  style :table,
    origin: [0, 44],
    size: [320, '100% - 44']
end
