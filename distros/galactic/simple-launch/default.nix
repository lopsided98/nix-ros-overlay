
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-galactic-simple-launch";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/simple_launch-release/archive/release/galactic/simple_launch/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "d7cfb566f9f919233a42cf0e5d76e2bee8746c6f313ab57eafdf00fcbf2094ba";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
