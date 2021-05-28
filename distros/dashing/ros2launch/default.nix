
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, launch, launch-ros, pythonPackages, ros2cli, ros2pkg }:
buildRosPackage {
  pname = "ros-dashing-ros2launch";
  version = "0.8.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/dashing/ros2launch/0.8.10-1.tar.gz";
    name = "0.8.10-1.tar.gz";
    sha256 = "4eebc3a18413f444f8ffe689be8e3282365b435ff6d715dabbd4d9ca8f49a993";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros ros2cli ros2pkg ];

  meta = {
    description = ''The launch command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
