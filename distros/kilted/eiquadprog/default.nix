
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules }:
buildRosPackage {
  pname = "ros-kilted-eiquadprog";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eiquadprog-release/archive/release/kilted/eiquadprog/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "2279528a57f4cea2117d34674ffd5b65194bb2bc89a064245e156c1f7a982eea";
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
