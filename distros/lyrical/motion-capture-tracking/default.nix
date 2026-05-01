
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, motion-capture-tracking-interfaces, pcl, rclcpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-motion-capture-tracking";
  version = "1.0.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/lyrical/motion_capture_tracking/1.0.6-3.tar.gz";
    name = "1.0.6-3.tar.gz";
    sha256 = "b977aac60e97632b62d94e9880d704bc3d305c2ff6f97d160d40c0e2f58e450f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module motion-capture-tracking-interfaces pcl rclcpp sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS Package for different motion capture systems, including custom rigid body tracking support";
    license = with lib.licenses; [ mit ];
  };
}
