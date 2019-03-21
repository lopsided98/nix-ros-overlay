
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-trajectory-control, uuv-world-ros-plugins-msgs, catkin, pythonPackages, gazebo-msgs, nav-msgs, uuv-gazebo-ros-plugins-msgs, rospy, std-msgs, visualization-msgs, uuv-control-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-control-utils";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_control_utils/0.6.10-0.tar.gz;
    sha256 = "c2cd071c9d224113db678734c97021269285000c8ff1862a59ffa84b8197eb1e";
  };

  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs uuv-trajectory-control uuv-world-ros-plugins-msgs pythonPackages.pyyaml nav-msgs uuv-gazebo-ros-plugins-msgs rospy std-msgs visualization-msgs uuv-control-msgs gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_control_utils package'';
    #license = lib.licenses.Apache-2.0;
  };
}
