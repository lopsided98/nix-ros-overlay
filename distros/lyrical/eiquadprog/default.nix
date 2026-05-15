
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules }:
buildRosPackage {
  pname = "ros-lyrical-eiquadprog";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eiquadprog-release/archive/release/lyrical/eiquadprog/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "69780ef13b2ebc45ffbce0490c8a7ff61433db0e3cc05b2c5ca7df7aab199d59";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git jrl-cmakemodules ];
  propagatedBuildInputs = [ ament-cmake boost eigen graphviz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eiquadprog a QP solver using active sets";
    license = with lib.licenses; [ lgpl3Only ];
  };
}
