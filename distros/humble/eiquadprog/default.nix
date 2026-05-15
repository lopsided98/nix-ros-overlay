
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules }:
buildRosPackage {
  pname = "ros-humble-eiquadprog";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eiquadprog-release/archive/release/humble/eiquadprog/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "e31f54c1b991830d237277929a318d54c51cb009fa243dad758ffef624145d56";
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
