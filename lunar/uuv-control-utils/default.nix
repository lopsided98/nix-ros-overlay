
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-world-ros-plugins-msgs, uuv-trajectory-control, catkin, pythonPackages, gazebo-msgs, nav-msgs, uuv-gazebo-ros-plugins-msgs, rospy, std-msgs, visualization-msgs, uuv-control-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-uuv-control-utils";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_control_utils/0.6.10-0.tar.gz;
    sha256 = "19ea4ebc4c8eeba3143ce3af0160d7c0275bf3d33108887b83a868a89ef922f1";
  };

  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs uuv-world-ros-plugins-msgs uuv-trajectory-control pythonPackages.pyyaml nav-msgs uuv-gazebo-ros-plugins-msgs rospy std-msgs visualization-msgs uuv-control-msgs gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_control_utils package'';
    license = with lib.licenses; [ asl20 ];
  };
}
