
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, motion-capture-tracking-interfaces, pcl, rclcpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-motion-capture-tracking";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/humble/motion_capture_tracking/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "031d9aa181f88f29bfcad9915ef9ab31417cf78a0b5310114129310c46db5508";
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
