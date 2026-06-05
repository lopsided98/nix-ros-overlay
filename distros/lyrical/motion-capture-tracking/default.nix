
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, motion-capture-tracking-interfaces, pcl, rclcpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-motion-capture-tracking";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/lyrical/motion_capture_tracking/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "b7af437679ac5e678993e8b8648d3cf3f5a790cbf5543fa6930f0e78bc2ea869";
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
