
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, std-capabilities, rocon-apps, rocon-app-manager, nodelet, roch-base }:
buildRosPackage {
  pname = "ros-kinetic-roch-capabilities";
  version = "2.0.15";

  src = fetchurl {
    url = https://github.com/SawYerRobotics-release/roch_robot-release/archive/release/kinetic/roch_capabilities/2.0.15-0.tar.gz;
    sha256 = "75f7da91dbfc6c84412daf4ef6968a905f7f5d6f6345750299723ae8bfbc36b4";
  };

  propagatedBuildInputs = [ std-capabilities rocon-apps rocon-app-manager nodelet roch-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Capabilities for Roch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
