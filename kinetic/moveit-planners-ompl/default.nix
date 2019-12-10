
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, eigen-conversions, moveit-core, moveit-resources, moveit-ros-planning, ompl, pluginlib, rosconsole, roscpp, rosunit, tf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-planners-ompl";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_planners_ompl/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "07ed7657b817fcdbc1f2c6937313d5c91dc794d9c315c276a2daeb01ab013bf1";
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
