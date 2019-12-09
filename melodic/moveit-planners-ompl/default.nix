
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, dynamic-reconfigure, ompl, pluginlib, catkin, moveit-resources, rosunit, roscpp, moveit-ros-planning, rosconsole, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-planners-ompl";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_planners_ompl/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "57dbd0aaf20ebe0619ed16d10a7835fee61df22ad5438da662dcbe71c670bdce";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core dynamic-reconfigure ompl pluginlib moveit-ros-planning roscpp rosconsole tf2-ros ];
  checkInputs = [ moveit-resources rosunit ];
  propagatedBuildInputs = [ moveit-core dynamic-reconfigure ompl pluginlib moveit-ros-planning roscpp rosconsole tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt! interface to OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
