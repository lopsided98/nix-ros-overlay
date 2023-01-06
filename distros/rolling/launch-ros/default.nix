
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, composition-interfaces, launch, lifecycle-msgs, osrf-pycommon, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-launch-ros";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/rolling/launch_ros/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "e7a423b5521b9e9a10b5f53938f1e529f3f17e1a873f05d2b945c272706f01c4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces launch lifecycle-msgs osrf-pycommon python3Packages.importlib-metadata python3Packages.pyyaml rclpy ];

  meta = {
    description = ''ROS specific extensions to the launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
