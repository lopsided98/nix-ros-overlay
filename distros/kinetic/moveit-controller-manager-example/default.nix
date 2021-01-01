
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, pluginlib, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-moveit-controller-manager-example";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_controller_manager_example/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "8e16220ba677f5b20906c97e7f097502cd1911cf3fb90557a655ac84bd4cf9c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ moveit-core pluginlib roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An example controller manager plugin for MoveIt. This is not functional code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
