
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-resources, pluginlib, tf, catkin, ompl, moveit-core, dynamic-reconfigure, eigen-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-planners-ompl";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_planners_ompl/0.9.15-0.tar.gz;
    sha256 = "78ab964a6364d5317d92645811b9fc60e4ad048897ec9b5522261602db953024";
  };

  buildInputs = [ moveit-ros-planning pluginlib ompl roscpp moveit-core dynamic-reconfigure eigen-conversions tf ];
  checkInputs = [ moveit-resources ];
  propagatedBuildInputs = [ moveit-ros-planning pluginlib ompl roscpp moveit-core dynamic-reconfigure eigen-conversions tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt! interface to OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
