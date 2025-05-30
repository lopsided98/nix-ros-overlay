
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, composition-interfaces, launch, lifecycle-msgs, osrf-pycommon, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-launch-ros";
  version = "0.29.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch_ros-release/archive/release/rolling/launch_ros/0.29.0-1.tar.gz";
    name = "0.29.0-1.tar.gz";
    sha256 = "d6e281406749b76051e561443c486bb3c1f474e526e401ab35e11a8cc14042db";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ ament-index-python composition-interfaces launch lifecycle-msgs osrf-pycommon python3Packages.importlib-metadata python3Packages.pyyaml rclpy ];

  meta = {
    description = "ROS specific extensions to the launch tool.";
    license = with lib.licenses; [ asl20 ];
  };
}
