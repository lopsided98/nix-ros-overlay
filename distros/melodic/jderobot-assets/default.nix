
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-jderobot-assets";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/assets-release/archive/release/melodic/jderobot_assets/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "b19ca427101bbd076aa5a9c30e8f5f50f0d0c0cb9869079957d6287dd2791ffd";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
