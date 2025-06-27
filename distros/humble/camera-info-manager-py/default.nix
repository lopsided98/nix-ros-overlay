
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-camera-info-manager-py";
  version = "3.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/humble/camera_info_manager_py/3.1.12-1.tar.gz";
    name = "3.1.12-1.tar.gz";
    sha256 = "76f8e35c200f618eaa3552cc7c1e8efe4aa296fe39757bd2ddcb47db5e65767e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python python3Packages.pyyaml python3Packages.rospkg rclpy sensor-msgs ];

  meta = {
    description = "Python interface for camera calibration information.

    This ROS package provides a CameraInfo interface for Python camera
    drivers similar to the C++ camera_info_manager package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
