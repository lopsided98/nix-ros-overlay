
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ament-cmake, ament-lint-common, realsense-camera-msgs, image-transport, cv-bridge, sensor-msgs, ament-cmake-gtest, tf2-ros, rosidl-default-generators, rmw-implementation, rclcpp, eigen, std-msgs, ament-lint-auto, rosidl-default-runtime, librealsense2 }:
buildRosPackage rec {
  pname = "ros-dashing-realsense-ros2-camera";
  version = "2.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_intel_realsense-release/archive/release/dashing/realsense_ros2_camera/2.0.4-2.tar.gz";
    name = "2.0.4-2.tar.gz";
    sha256 = "2d0032dd8cf03084e3015d70529ff9acf6c0b44b2865370f131b3eeff7fb2fad";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces realsense-camera-msgs image-transport cv-bridge sensor-msgs tf2-ros rmw-implementation rclcpp eigen std-msgs librealsense2 ];
  checkInputs = [ ament-lint-auto ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces realsense-camera-msgs sensor-msgs cv-bridge tf2-ros rmw-implementation rclcpp std-msgs rosidl-default-runtime librealsense2 ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''The realsense_ros2_camera package'';
    license = with lib.licenses; [ asl20 ];
  };
}
