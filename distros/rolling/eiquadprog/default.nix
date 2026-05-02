
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules }:
buildRosPackage {
  pname = "ros-rolling-eiquadprog";
  version = "1.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eiquadprog-release/archive/release/rolling/eiquadprog/1.3.1-2.tar.gz";
    name = "1.3.1-2.tar.gz";
    sha256 = "96e60368e371f60449d78cce2c7a06892eb8ec35c643237c22548acc3a0b25b0";
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
