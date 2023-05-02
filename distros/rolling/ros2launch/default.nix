
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, launch-xml, launch-yaml, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-rolling-ros2launch";
  version = "0.25.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/rolling/ros2launch/0.25.0-1.tar.gz";
    name = "0.25.0-1.tar.gz";
    sha256 = "8339ccba18a115bbabb51912fec1c39b8e9ee7b23c599663b00806fa278dd484";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros launch-xml launch-yaml ros2cli ros2pkg ];

  meta = {
    description = ''The launch command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
