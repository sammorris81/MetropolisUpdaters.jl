module MetropolisUpdaters

using Distributions
importall DataTransformations

export
  # types
    # metropolis
    ParameterType,
    MetropolisParameter,
    MetropolisVector,
    MetropolisMatrix,
    # calculated
    CalculatedValues,
    CalculatedValuesVector,
    CalculatedValuesMatrix,

  # constructors
    # metropolis
    createmetropolis,       # create Metropolis Vector or Matrix
    createcalculatedvalues,  # create CalculateValues Vector or Matrix

  # methods
    # metropolis
    fillcan!,          # fill candidate with values
    fillcur!,          # fill current with values
    updatestepsize!,   # update step size for cand distribution (adaptive MH)
    updatemh!,         # preferred way to update parameter, calls mhseq! or mhblock!
    updatemhseq!,      # update the MH parameter with a sequential update
    updatemhblock!,    # update the MH parameter with a block update
    # both
    activevalue        # select the candidate or current value based on whether
                       # or not object is involved in the update step

# source files
include("types/metropolisparameter.jl")
include("types/calculatedvalue.jl")
include("updater/sequentialupdater.jl")
include("updater/blockupdater.jl")
include("updater/common.jl")

end # module
