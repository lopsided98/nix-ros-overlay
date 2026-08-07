
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, message-filters, rclcpp, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-posedetection-msgs";
  version = "5.0.1-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/jazzy/posedetection_msgs/5.0.1-3.tar.gz";
    name = "5.0.1-3.tar.gz";
    sha256 = "0010fe388ade127d9540567e92219e07cfef2fdffbbf6febde8b8f8edd51d677";
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
