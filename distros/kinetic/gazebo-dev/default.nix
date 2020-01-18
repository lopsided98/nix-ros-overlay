
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazeboSimulator }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-dev";
  version = "2.5.19-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_dev/2.5.19-1.tar.gz";
    name = "2.5.19-1.tar.gz";
    sha256 = "a4f209b8bd4ef055dc4423b745ec5e12388593ea7bb5cb342fdc8f4ab6ea225e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazeboSimulator.gazebo gazeboSimulator.gazebo7 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a cmake config for the default version of Gazebo for the ROS distribution.'';
    license = with lib.licenses; [ asl20 ];
  };
}
