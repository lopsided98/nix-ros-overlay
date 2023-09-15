
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-viz";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_viz/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "3a461b3dee7c4340745d7baea9f85b065e565d6469bb9632e008d5c94c97cf8b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''GUI for MOLA'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
