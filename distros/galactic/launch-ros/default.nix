
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, composition-interfaces, launch, lifecycle-msgs, osrf-pycommon, python3Packages, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-galactic-launch-ros";
  version = "0.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/galactic/launch_ros/0.14.2-1.tar.gz";
    name = "0.14.2-1.tar.gz";
    sha256 = "db6c0cc59b01aa5492e04d342273b60adccd3d65c0b79016dcd8e695517acca8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces launch lifecycle-msgs osrf-pycommon python3Packages.importlib-metadata python3Packages.pyyaml rclpy ];

  meta = {
    description = ''ROS specific extensions to the launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
