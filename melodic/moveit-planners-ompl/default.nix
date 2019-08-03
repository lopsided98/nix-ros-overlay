
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-resources, rosconsole, pluginlib, catkin, ompl, tf2-ros, moveit-core, dynamic-reconfigure, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners-ompl";
  version = "1.0.2-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners_ompl/1.0.2-1.tar.gz;
    sha256 = "57dbd0aaf20ebe0619ed16d10a7835fee61df22ad5438da662dcbe71c670bdce";
  };

  buildInputs = [ moveit-ros-planning pluginlib rosconsole ompl tf2-ros moveit-core dynamic-reconfigure roscpp ];
  checkInputs = [ moveit-resources rosunit ];
  propagatedBuildInputs = [ moveit-ros-planning pluginlib rosconsole ompl tf2-ros moveit-core dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt! interface to OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
