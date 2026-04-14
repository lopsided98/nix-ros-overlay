
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, aravis, camera-aravis2-msgs, camera-info-manager, cv-bridge, diagnostic-msgs, glib, image-transport, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-camera-aravis2";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/camera_aravis2-release/archive/release/kilted/camera_aravis2/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "fada8b5d1999c5e268344516fb316a2af65ba9f7176921f3623ca787027eec1c";
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
