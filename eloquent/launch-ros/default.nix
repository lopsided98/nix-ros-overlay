
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, composition-interfaces, launch, lifecycle-msgs, osrf-pycommon, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-eloquent-launch-ros";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/eloquent/launch_ros/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "b13f094e943a71ea34aa09989a6f7cccfcf83e486fbb18b75b5f4ed0c4669521";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces launch lifecycle-msgs osrf-pycommon python3Packages.pyyaml rclpy ];

  meta = {
    description = ''ROS specific extensions to the launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
