
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, sensor-msgs, sensor-msgs-py, std-msgs }:
buildRosPackage {
  pname = "ros-humble-examples-rclpy-pointcloud-publisher";
  version = "0.15.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclpy_pointcloud_publisher/0.15.0-2.tar.gz";
    name = "0.15.0-2.tar.gz";
    sha256 = "2740232e15f4661d68ac868869bbd04490e305f7addd6840486ce88ba719824c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy rclpy sensor-msgs sensor-msgs-py std-msgs ];

  meta = {
    description = ''Example on how to publish a Pointcloud2 message'';
    license = with lib.licenses; [ asl20 ];
  };
}
