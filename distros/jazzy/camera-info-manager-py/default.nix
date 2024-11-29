
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, python3Packages, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-camera-info-manager-py";
  version = "5.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_common-release/archive/release/jazzy/camera_info_manager_py/5.1.5-1.tar.gz";
    name = "5.1.5-1.tar.gz";
    sha256 = "b60c5cb07b54818a8dcca4c0aad36bc38790a1496405990e3f3c54fc85ac7882";
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
