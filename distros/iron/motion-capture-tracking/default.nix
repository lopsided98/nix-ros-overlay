
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, motion-capture-tracking-interfaces, pcl, rclcpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-motion-capture-tracking";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/iron/motion_capture_tracking/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "8ed84ec19b7cec06b814c86f8bd34e9c0baf67451a9567ea5170b248cf8e836f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module motion-capture-tracking-interfaces pcl rclcpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS Package for different motion capture systems, including custom rigid body tracking support'';
    license = with lib.licenses; [ mit ];
  };
}
