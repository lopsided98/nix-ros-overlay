
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, cv-bridge, eigen, image-transport, librealsense2, rclcpp, realsense-camera-msgs, rmw-implementation, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-dashing-realsense-ros2-camera";
  version = "2.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_intel_realsense-release/archive/release/dashing/realsense_ros2_camera/2.0.4-2.tar.gz";
    name = "2.0.4-2.tar.gz";
    sha256 = "2d0032dd8cf03084e3015d70529ff9acf6c0b44b2865370f131b3eeff7fb2fad";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen image-transport ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces cv-bridge librealsense2 rclcpp realsense-camera-msgs rmw-implementation rosidl-default-runtime sensor-msgs std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The realsense_ros2_camera package'';
    license = with lib.licenses; [ asl20 ];
  };
}
