class GoldbrickCell < Cell::Rails

  def show(args)
    @goldbrick = args[:goldbrick]
    render
  end

end
