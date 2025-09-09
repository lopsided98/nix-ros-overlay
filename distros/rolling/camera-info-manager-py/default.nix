
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-camera-info-manager-py";
  version = "6.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/camera_info_manager_py/6.4.1-2.tar.gz";
    name = "6.4.1-2.tar.gz";
    sha256 = "e7c2829f7a3a2d2c29ece956752cc0ae612b1db670878b18aa64d8fae0c235e9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml rclpy sensor-msgs ];

  meta = {
    description = "Python interface for camera calibration information.

    This ROS package provides a CameraInfo interface for Python camera
    drivers similar to the C++ camera_info_manager package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
