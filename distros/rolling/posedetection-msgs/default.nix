
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, message-filters, rclcpp, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-posedetection-msgs";
  version = "5.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jsk_common_msgs-release/archive/release/rolling/posedetection_msgs/5.0.2-1.tar.gz";
    name = "5.0.2-1.tar.gz";
    sha256 = "6569d42bb9dff395aaafb3f95e88b231315d094d0cd6a5b3c0ad7be4935ff242";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs message-filters rclcpp rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "posedetection_msgs provides messages and services to facilitate passing pose detection results and features.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
