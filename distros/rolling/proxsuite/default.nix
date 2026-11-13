
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catch2, cereal, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules, matio, python3, python3Packages, ros-environment, simde }:
buildRosPackage {
  pname = "ros-rolling-proxsuite";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/rolling/proxsuite/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "19df83c9148acbd87bd4881d2b13a63eac4bde89f275f2497af201cb3a0071e2";
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
