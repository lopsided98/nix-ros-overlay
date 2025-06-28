
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gz-msgs-vendor, gz-transport-vendor, image-transport, pkg-config, rclcpp, ros-gz-bridge, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros-gz-image";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/jazzy/ros_gz_image/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "b8a6ec514e80746de2b864aa7f31313253b90bee33b239bf41b43f9a34962ae1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gz-msgs-vendor gz-transport-vendor image-transport rclcpp ros-gz-bridge sensor-msgs ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Image utilities for Gazebo simulation with ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
