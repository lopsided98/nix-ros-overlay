
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, composition-interfaces, launch, lifecycle-msgs, osrf-pycommon, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-foxy-launch-ros";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/foxy/launch_ros/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "472cb6a766781c24472dc9ae6a9c5f0cb83dfa7d3f3c554c87ea1f9b188dad33";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces launch lifecycle-msgs osrf-pycommon python3Packages.pyyaml rclpy ];

  meta = {
    description = ''ROS specific extensions to the launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
