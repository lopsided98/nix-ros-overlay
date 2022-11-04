
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-jderobot-assets";
  version = "1.0.4-r3";

  src = fetchurl {
    url = "https://github.com/JdeRobot/assets-release/archive/release/melodic/jderobot_assets/1.0.4-3.tar.gz";
    name = "1.0.4-3.tar.gz";
    sha256 = "5a9b5d2b0f99b289689b9c3974f01ae01f653e0c662865c902f2722cd2f1311c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_assets package'';
    license = with lib.licenses; [ mit ];
  };
}
