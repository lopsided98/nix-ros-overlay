
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rosgraph";
  version = "1.14.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosgraph/1.14.6-1.tar.gz";
    name = "1.14.6-1.tar.gz";
    sha256 = "4b58a690d74e90fcbcbbedcd43ef2c85675abaa5f614c1b16ad106eb8d10488f";
  };

  buildType = "catkin";
  checkInputs = [ pythonPackages.mock ];
  propagatedBuildInputs = [ pythonPackages.netifaces pythonPackages.pyyaml pythonPackages.rospkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosgraph contains the rosgraph command-line tool, which prints
    information about the ROS Computation Graph. It also provides an
    internal library that can be used by graphical tools.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
