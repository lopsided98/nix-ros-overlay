
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, git, graphviz, jrl-cmakemodules }:
buildRosPackage {
  pname = "ros-jazzy-eiquadprog";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/eiquadprog-release/archive/release/jazzy/eiquadprog/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "c7497af1025515755316e26185f3d6329cfaa54e93411e3dbb645c17d62b0b00";
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
