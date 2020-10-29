module BangMacro

export @!

# Call first param as function with remaining params as args eg @! cd ".." becomes cd("..")
macro !(f, args...) Expr(:call, f, args...) end

end # module
