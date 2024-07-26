
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, launch-xml, launch-yaml, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-rolling-ros2launch";
  version = "0.27.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/rolling/ros2launch/0.27.1-1.tar.gz";
    name = "0.27.1-1.tar.gz";
    sha256 = "ec05848793e1c219f9490fdc09bba9e9c17c36aa813fe6019e0f75695135b13f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros launch-xml launch-yaml ros2cli ros2pkg ];

  meta = {
    description = "The launch command for ROS 2 command line tools.";
    license = with lib.licenses; [ asl20 ];
  };
}
