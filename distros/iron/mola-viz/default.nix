
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-viz";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_viz/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "23fe69b4816e32612a11113767f6138fce5d9682d7a5b7f10c6c6e9b2c5698f4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "GUI for MOLA";
    license = with lib.licenses; [ gpl3Only ];
  };
}
