
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-gazebo-ros-plugins-msgs, geometry-msgs, uuv-world-ros-plugins-msgs, std-msgs, pythonPackages, catkin, uuv-control-msgs, uuv-trajectory-control, gazebo-msgs, visualization-msgs, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-control-utils";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_control_utils/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "f4c0107fb20693cf3834b44eb2f5edef17f69ed325db2033d205a7cda1f604e5";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.numpy pythonPackages.pyyaml geometry-msgs uuv-gazebo-ros-plugins-msgs uuv-world-ros-plugins-msgs std-msgs uuv-control-msgs uuv-trajectory-control gazebo-msgs visualization-msgs rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_control_utils package'';
    license = with lib.licenses; [ asl20 ];
  };
}
