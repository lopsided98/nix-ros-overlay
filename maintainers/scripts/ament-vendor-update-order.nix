{ candidates }:
with import ../../. {};
let
  updatable = lib.filter (pkg: if pkg ? updateAmentVendor then true else lib.warn "${pkg.pname} not updatable" false) candidates;
  isDependent = a: b: builtins.elem a (b.buildInputs ++ b.propagatedBuildInputs ++ b.nativeBuildInputs);
  sorted = (lib.toposort isDependent updatable).result;
in
map (p: let name = lib.removePrefix "ros-${p.rosDistro}-" p.pname; in "${p.rosDistro}.${name}") sorted
