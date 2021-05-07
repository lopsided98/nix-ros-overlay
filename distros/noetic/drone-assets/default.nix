
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-drone-assets";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/noetic/drone_assets/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "fe6c1d0b77977a27226148598d70eb902bb833ed24fd59cb6f32c80322489399";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
