
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, eigen-conversions, moveit-core, moveit-resources, moveit-ros-planning, ompl, pluginlib, rosconsole, roscpp, rosunit, tf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-planners-ompl";
  version = "0.9.18-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_planners_ompl/0.9.18-1.tar.gz";
    name = "0.9.18-1.tar.gz";
    sha256 = "b548684e53fe78fe80d3b5484cdc8c68acdf4b3e7f8cac64586f4c839308fad6";
  };

  buildType = "catkin";
  buildInputs = [ rosconsole ];
  checkInputs = [ moveit-resources rosunit ];
  propagatedBuildInputs = [ dynamic-reconfigure eigen-conversions moveit-core moveit-ros-planning ompl pluginlib roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt! interface to OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
