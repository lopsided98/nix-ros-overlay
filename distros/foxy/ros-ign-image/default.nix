
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ignition, image-transport, pkg-config, rclcpp, ros-ign-bridge, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-ros-ign-image";
  version = "0.221.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/foxy/ros_ign_image/0.221.2-1.tar.gz";
    name = "0.221.2-1.tar.gz";
    sha256 = "e749b6739d04888ba97f79ee5f7b819563bda26e617e9334a7671ecdc5872c45";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ignition.msgs5 ignition.transport8 image-transport rclcpp ros-ign-bridge sensor-msgs ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Image utilities for Ignition simulation with ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
