
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, sensor-msgs, rclcpp, std-msgs, rosidl-default-runtime, ament-lint-common, ament-cmake, image-transport, eigen, cv-bridge, ament-cmake-gtest, librealsense2, rmw-implementation, realsense-camera-msgs, rosidl-default-generators, builtin-interfaces, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-realsense-ros2-camera";
  version = "2.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_intel_realsense-release/archive/release/dashing/realsense_ros2_camera/2.0.4-2.tar.gz";
    name = "2.0.4-2.tar.gz";
    sha256 = "2d0032dd8cf03084e3015d70529ff9acf6c0b44b2865370f131b3eeff7fb2fad";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs rclcpp std-msgs image-transport eigen cv-bridge realsense-camera-msgs librealsense2 rmw-implementation builtin-interfaces tf2-ros ];
  checkInputs = [ ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs rclcpp rosidl-default-runtime std-msgs cv-bridge realsense-camera-msgs librealsense2 rmw-implementation builtin-interfaces tf2-ros ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''The realsense_ros2_camera package'';
    license = with lib.licenses; [ asl20 ];
  };
}
