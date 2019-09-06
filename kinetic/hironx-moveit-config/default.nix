
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-move-group, collada-urdf, hironx-ros-bridge, catkin, moveit-ros, rostest, moveit-simple-controller-manager, moveit-planners }:
buildRosPackage {
  pname = "ros-kinetic-hironx-moveit-config";
  version = "2.1.1";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_hironx-release/archive/release/kinetic/hironx_moveit_config/2.1.1-0.tar.gz";
    name = "2.1.1-0.tar.gz";
    sha256 = "923ed918a6cfa4713f9a2726c4baef93fdfcddd194c6c1f97f7168831be5fd9d";
  };

  buildType = "catkin";
  buildInputs = [ hironx-ros-bridge moveit-ros-move-group collada-urdf ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hironx-ros-bridge moveit-simple-controller-manager moveit-planners moveit-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the HiroNX with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
