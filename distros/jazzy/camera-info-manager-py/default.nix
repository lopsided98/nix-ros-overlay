
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-camera-info-manager-py";
  version = "5.1.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/jazzy/camera_info_manager_py/5.1.7-1.tar.gz";
    name = "5.1.7-1.tar.gz";
    sha256 = "2fff48e1815f99afc1fa8c355ad2ad44dc1969e8832e947cba4d6a56247ad4de";
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
