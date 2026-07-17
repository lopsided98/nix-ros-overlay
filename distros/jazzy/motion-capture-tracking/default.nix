
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, motion-capture-tracking-interfaces, pcl, rclcpp, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-motion-capture-tracking";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/jazzy/motion_capture_tracking/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "d99c9ee3fb6362b2ca484c5e41ff31294601abd22a439488cc2f2cca579d04e5";
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
