
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, collada-urdf, hironx-ros-bridge, moveit-planners, moveit-ros, moveit-ros-move-group, moveit-simple-controller-manager, rostest }:
buildRosPackage {
  pname = "ros-melodic-hironx-moveit-config";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_hironx-release/archive/release/melodic/hironx_moveit_config/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "25a9b7c9dabea8e03d2f0e08544d7285c8920c7542d52eba6064f912b503962b";
  };

  buildType = "catkin";
  buildInputs = [ catkin collada-urdf moveit-ros-move-group ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hironx-ros-bridge moveit-planners moveit-ros moveit-simple-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the HiroNX with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
