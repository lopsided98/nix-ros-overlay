
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-world-ros-plugins-msgs, uuv-trajectory-control, catkin, pythonPackages, gazebo-msgs, nav-msgs, uuv-gazebo-ros-plugins-msgs, rospy, std-msgs, visualization-msgs, uuv-control-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-control-utils";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_control_utils/0.6.13-0.tar.gz;
    sha256 = "f4c0107fb20693cf3834b44eb2f5edef17f69ed325db2033d205a7cda1f604e5";
  };

  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs uuv-world-ros-plugins-msgs uuv-trajectory-control pythonPackages.pyyaml nav-msgs uuv-gazebo-ros-plugins-msgs rospy std-msgs visualization-msgs uuv-control-msgs gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_control_utils package'';
    license = with lib.licenses; [ asl20 ];
  };
}
