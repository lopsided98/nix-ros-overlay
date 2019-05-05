
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, rospack, boost, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-lunar-roslib";
  version = "1.14.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/lunar/roslib/1.14.4-0.tar.gz;
    sha256 = "01ce5acbf1d33534997fa940dd96e7b08b20861ed26cb733e0cb26a49c36c18a";
  };

  buildInputs = [ rospack boost ];
  propagatedBuildInputs = [ pythonPackages.rospkg ros-environment rospack catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Base dependencies and support libraries for ROS.
    roslib contains many of the common data structures and tools that are shared across ROS client library implementations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
