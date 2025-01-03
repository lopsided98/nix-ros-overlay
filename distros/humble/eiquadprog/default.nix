
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-humble-eiquadprog";
  version = "1.2.9-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eiquadprog-release/archive/release/humble/eiquadprog/1.2.9-2.tar.gz";
    name = "1.2.9-2.tar.gz";
    sha256 = "bb330371bc2cdb6eac4a1e2646513b4739f957afe52a1e9865895b751273c849";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ ament-cmake boost eigen graphviz ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Eiquadprog a QP solver using active sets";
    license = with lib.licenses; [ lgpl3Only ];
  };
}
