
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, composition-interfaces, ament-copyright, launch, osrf-pycommon, ament-index-python, pythonPackages, ament-pep257, rclpy, ament-flake8, lifecycle-msgs }:
buildRosPackage {
  pname = "ros-dashing-launch-ros";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/dashing/launch_ros/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "06de5fd5c0cb74f314214f08763f7f0e417c8b06c7625caf43eae853308085ce";
  };

  buildType = "ament_python";
  buildInputs = [ python3Packages.pyyaml composition-interfaces launch osrf-pycommon rclpy ament-index-python lifecycle-msgs ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ python3Packages.pyyaml composition-interfaces launch osrf-pycommon rclpy ament-index-python lifecycle-msgs ];

  meta = {
    description = ''ROS specific extensions to the launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
