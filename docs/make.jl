using NuovoPacchettoPisa
using Documenter

DocMeta.setdocmeta!(NuovoPacchettoPisa, :DocTestSetup, :(using NuovoPacchettoPisa); recursive=true)

makedocs(;
    modules=[NuovoPacchettoPisa],
    authors="Isaia Nisoli",
    sitename="NuovoPacchettoPisa.jl",
    format=Documenter.HTML(;
        canonical="https://orkolorko.github.io/NuovoPacchettoPisa.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/orkolorko/NuovoPacchettoPisa.jl",
    devbranch="main",
)
