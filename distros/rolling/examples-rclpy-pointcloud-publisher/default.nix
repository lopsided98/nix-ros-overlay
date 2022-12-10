
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, sensor-msgs, sensor-msgs-py, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-examples-rclpy-pointcloud-publisher";
  version = "0.16.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclpy_pointcloud_publisher/0.16.2-1.tar.gz";
    name = "0.16.2-1.tar.gz";
    sha256 = "3e05d82d6539fb27c85513a5bb1455dd5095bd5494f0671df4e33caa919e7546";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy rclpy sensor-msgs sensor-msgs-py std-msgs ];

  meta = {
    description = ''Example on how to publish a Pointcloud2 message'';
    license = with lib.licenses; [ asl20 ];
  };
}
