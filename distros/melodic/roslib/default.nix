
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, pythonPackages, ros-environment, rosmake, rospack }:
buildRosPackage {
  pname = "ros-melodic-roslib";
  version = "1.14.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/roslib/1.14.9-1.tar.gz";
    name = "1.14.9-1.tar.gz";
    sha256 = "5d88106ad4dc7cf82a698e7a7ff86afa17c87ba2d994ea6caf5248cca727d6eb";
  };

  buildType = "catkin";
  buildInputs = [ boost pythonPackages.setuptools ];
  checkInputs = [ rosmake ];
  propagatedBuildInputs = [ catkin pythonPackages.rospkg ros-environment rospack ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Base dependencies and support libraries for ROS.
    roslib contains many of the common data structures and tools that are shared across ROS client library implementations.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
