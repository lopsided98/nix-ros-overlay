
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-ros, librealsense2, rclcpp, rclcpp-components, realsense-msgs, realsense-node, realsense-ros }:
buildRosPackage {
  pname = "ros-foxy-realsense-examples";
  version = "2.0.8-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_intel_realsense-release/archive/release/foxy/realsense_examples/2.0.8-2.tar.gz";
    name = "2.0.8-2.tar.gz";
    sha256 = "c10a486b28d2da5619c45f25f418ab82c1aeda507659b3ea5df488054c01bbe8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-ros librealsense2 rclcpp rclcpp-components realsense-msgs realsense-node realsense-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 RealSense Package Exampless'';
    license = with lib.licenses; [ asl20 ];
  };
}
