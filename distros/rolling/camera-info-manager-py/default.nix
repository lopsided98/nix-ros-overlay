
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-camera-info-manager-py";
  version = "7.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/camera_info_manager_py/7.0.0-1.tar.gz";
    name = "7.0.0-1.tar.gz";
    sha256 = "c8399fe74be98447a673b4a64a41b0f9db1feca6c3241dcb00896391b466a8f9";
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
