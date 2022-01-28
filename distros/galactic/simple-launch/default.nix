
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-index-python, launch, launch-ros, xacro }:
buildRosPackage {
  pname = "ros-galactic-simple-launch";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/oKermorgant/simple_launch-release/archive/release/galactic/simple_launch/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "9b9302a25c2b2deed63455484c751a2af8e66b6aa4d18199bcfac289acef1cda";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-index-python launch launch-ros xacro ];

  meta = {
    description = ''Python helper class for the ROS 2 launch system'';
    license = with lib.licenses; [ mit ];
  };
}
