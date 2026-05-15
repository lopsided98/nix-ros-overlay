
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules }:
buildRosPackage {
  pname = "ros-rolling-eiquadprog";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eiquadprog-release/archive/release/rolling/eiquadprog/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "6c7a9903d1846a324a2585608d77683bae4d9a3c911d23e1ebe8b992d820b49f";
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
