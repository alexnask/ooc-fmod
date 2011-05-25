import fmod
use fmod

system := System new()
system init(2, Init normal, null)

system clean() // Equivalent to calling clear() then release()
