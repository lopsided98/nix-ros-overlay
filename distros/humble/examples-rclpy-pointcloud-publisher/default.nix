
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, python3Packages, pythonPackages, rclpy, sensor-msgs, sensor-msgs-py, std-msgs }:
buildRosPackage {
  pname = "ros-humble-examples-rclpy-pointcloud-publisher";
  version = "0.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclpy_pointcloud_publisher/0.15.1-1.tar.gz";
    name = "0.15.1-1.tar.gz";
    sha256 = "f105c56892a928d70e00ead663c8255adcd0ebd37593387b0a2ec571b3cc650b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.numpy rclpy sensor-msgs sensor-msgs-py std-msgs ];

  meta = {
    description = ''Example on how to publish a Pointcloud2 message'';
    license = with lib.licenses; [ asl20 ];
  };
}
