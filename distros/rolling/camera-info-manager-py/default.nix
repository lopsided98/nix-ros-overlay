
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, python3Packages, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-camera-info-manager-py";
  version = "6.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/rolling/camera_info_manager_py/6.0.3-1.tar.gz";
    name = "6.0.3-1.tar.gz";
    sha256 = "c9ded346b37a9202f3b775078d5c36b3cfc20e37b2d6a8639d39943c83476e65";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml python3Packages.rospkg rclpy sensor-msgs ];

  meta = {
    description = "Python interface for camera calibration information.

    This ROS package provides a CameraInfo interface for Python camera
    drivers similar to the C++ camera_info_manager package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
