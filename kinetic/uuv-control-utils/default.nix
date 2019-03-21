
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-trajectory-control, uuv-world-ros-plugins-msgs, catkin, pythonPackages, gazebo-msgs, nav-msgs, uuv-gazebo-ros-plugins-msgs, rospy, std-msgs, visualization-msgs, uuv-control-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-control-utils";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_control_utils/0.6.10-0.tar.gz;
    sha256 = "faa037bbdbbe7263e626427516adaa702eb1ef83ca4fdcb6835ec128048b526c";
  };

  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs uuv-trajectory-control uuv-world-ros-plugins-msgs pythonPackages.pyyaml nav-msgs uuv-gazebo-ros-plugins-msgs rospy std-msgs visualization-msgs uuv-control-msgs gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_control_utils package'';
    #license = lib.licenses.Apache-2.0;
  };
}
