
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-viz";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_viz/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "6f2c71dc9d0d96b6eb186191015f2c9cc7014b3b6478e5afc56a0e8ae1828a69";
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
