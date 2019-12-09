
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, composition-interfaces, ament-copyright, launch, osrf-pycommon, ament-index-python, pythonPackages, ament-pep257, rclpy, ament-flake8, lifecycle-msgs }:
buildRosPackage {
  pname = "ros-eloquent-launch-ros";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/eloquent/launch_ros/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "b13f094e943a71ea34aa09989a6f7cccfcf83e486fbb18b75b5f4ed0c4669521";
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
