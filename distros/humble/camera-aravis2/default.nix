
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, aravis, camera-aravis2-msgs, camera-info-manager, cv-bridge, diagnostic-msgs, glib, image-transport, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-camera-aravis2";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/camera_aravis2-release/archive/release/humble/camera_aravis2/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "cf73c82b7a2aff79ffa52845239a580a66efb32152349039c5f5c0618a926096";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake aravis glib ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ camera-aravis2-msgs camera-info-manager cv-bridge diagnostic-msgs image-transport rclcpp rclcpp-components sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 camera driver for [GenICam](https://www.emva.org/standards-technology/genicam/)-based GigEVision and USB3Vision cameras.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
