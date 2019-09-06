
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, sensor-msgs, catkin, moveit-core, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-controller-manager-example";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_controller_manager_example/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "0c1fa391a1dd046f4b19a93362f23702c2ea92643483c7d4c96ff31d51bfb43a";
  };

  buildType = "catkin";
  buildInputs = [ pluginlib sensor-msgs roscpp moveit-core ];
  propagatedBuildInputs = [ sensor-msgs moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An example controller manager plugin for MoveIt. This is not functional code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
