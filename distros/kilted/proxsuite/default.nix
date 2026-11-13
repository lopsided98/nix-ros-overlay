
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catch2, cereal, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules, matio, python3, python3Packages, ros-environment, simde }:
buildRosPackage {
  pname = "ros-kilted-proxsuite";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/kilted/proxsuite/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "5a517be3a8e4206ae7b177de315f3c31f39b6a74eb5d1afc9fbc0e27f1341d0a";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git graphviz jrl-cmakemodules python3 ros-environment ];
  checkInputs = [ catch2 matio ];
  propagatedBuildInputs = [ cereal eigen python3Packages.nanobind python3Packages.numpy python3Packages.scipy simde ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The Advanced Proximal Optimization Toolbox";
    license = with lib.licenses; [ bsd2 ];
  };
}
