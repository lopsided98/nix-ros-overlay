
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-drone-assets";
  version = "1.3.5-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/drone_assets/1.3.5-1.tar.gz";
    name = "1.3.5-1.tar.gz";
    sha256 = "e51a3b7971992a784d8e36ea0d06210c8d67959cddfaf09c37f7b6f9da16f882";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
