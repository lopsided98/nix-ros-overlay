
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, composition-interfaces, launch, lifecycle-msgs, osrf-pycommon, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-launch-ros";
  version = "0.26.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/rolling/launch_ros/0.26.4-2.tar.gz";
    name = "0.26.4-2.tar.gz";
    sha256 = "53a30afdb53510e05baaaf66f3f6918bb885916efd9f98e0ec2c9b40498d014d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces launch lifecycle-msgs osrf-pycommon python3Packages.importlib-metadata python3Packages.pyyaml rclpy ];

  meta = {
    description = ''ROS specific extensions to the launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
