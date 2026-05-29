
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-camera-info-manager-py";
  version = "7.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/camera_info_manager_py/7.0.1-1.tar.gz";
    name = "7.0.1-1.tar.gz";
    sha256 = "767f37a9ca3d642d97ad26b4d3c75dd949522c7a6b2356e507f20b249486c6e5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy sensor-msgs ];

  meta = {
    description = "Python interface for camera calibration information.

    This ROS package provides a CameraInfo interface for Python camera
    drivers similar to the C++ camera_info_manager package.";
    license = with lib.licenses; [ bsd3 ];
  };
}
