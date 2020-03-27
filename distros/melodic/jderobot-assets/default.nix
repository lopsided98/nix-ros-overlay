
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-jderobot-assets";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/assets-release/archive/release/melodic/jderobot_assets/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "3996e6a1135cf02649e93b30f5db9b1b61b9ab1383cf99d3cab72ec480059864";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
