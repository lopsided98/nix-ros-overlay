
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catch2, cereal, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules, matio, python3, python3Packages, ros-environment, simde }:
buildRosPackage {
  pname = "ros-lyrical-proxsuite";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/proxsuite-release/archive/release/lyrical/proxsuite/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "4c12ec701b87a2163c39e9e0e39a34b7314fd48e0e68b41961800b4d50128008";
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
