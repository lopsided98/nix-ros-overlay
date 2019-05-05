
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-resources, pluginlib, tf, catkin, ompl, moveit-core, dynamic-reconfigure, eigen-conversions, roscpp }:
buildRosPackage {
  pname = "ros-lunar-moveit-planners-ompl";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_planners_ompl/0.9.12-1.tar.gz;
    sha256 = "3447310d21d65f0947d3e788043649ee39db3f939aa4e99fb47cc19c77513568";
  };

  buildInputs = [ moveit-ros-planning pluginlib ompl roscpp moveit-core dynamic-reconfigure eigen-conversions tf ];
  checkInputs = [ moveit-resources ];
  propagatedBuildInputs = [ moveit-ros-planning pluginlib ompl roscpp moveit-core dynamic-reconfigure eigen-conversions tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt interface to OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
