
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-drone-assets";
  version = "1.3.6-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/melodic/drone_assets/1.3.6-1.tar.gz";
    name = "1.3.6-1.tar.gz";
    sha256 = "0bc0546c4f1ab41f080eea59fecf80e9e239368359f3ddf22693a6db38bd3606";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The drone_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
