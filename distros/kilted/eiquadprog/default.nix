
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, git, graphviz }:
buildRosPackage {
  pname = "ros-kilted-eiquadprog";
  version = "1.2.9-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eiquadprog-release/archive/release/kilted/eiquadprog/1.2.9-2.tar.gz";
    name = "1.2.9-2.tar.gz";
    sha256 = "77cb249bc50854c5d9b3e482e45e27306abb2191f9317713f9b54642f36ccd18";
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
