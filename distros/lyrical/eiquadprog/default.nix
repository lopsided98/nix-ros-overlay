
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules }:
buildRosPackage {
  pname = "ros-lyrical-eiquadprog";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eiquadprog-release/archive/release/lyrical/eiquadprog/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "ddc3b45cacbca594589a1a82e7fffce6e89b6fbcc52b99c8712b4f2ffbd18b6c";
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
