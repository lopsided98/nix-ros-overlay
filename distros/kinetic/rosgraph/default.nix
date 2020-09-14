
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-rosgraph";
  version = "1.12.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosgraph/1.12.16-1.tar.gz";
    name = "1.12.16-1.tar.gz";
    sha256 = "c2403dd9523387fa99f64924a7681e5653aad8e3e5a14d389133c5ded64667b4";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ pythonPackages.netifaces pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosgraph contains the rosgraph command-line tool, which prints
    information about the ROS Computation Graph. It also provides an
    internal library that can be used by graphical tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
