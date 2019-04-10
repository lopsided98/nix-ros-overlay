
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-lunar-rosgraph";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosgraph/1.13.7-0.tar.gz;
    sha256 = "a27fd4ca239f5bee12a938ed78549c04ec70bd4e6907755a60251959d968a363";
  };

  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ pythonPackages.rospkg pythonPackages.netifaces pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosgraph contains the rosgraph command-line tool, which prints
    information about the ROS Computation Graph. It also provides an
    internal library that can be used by graphical tools.'';
    #license = lib.licenses.BSD;
  };
}
