
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, aravis, camera-aravis2-msgs, camera-info-manager, cv-bridge, diagnostic-msgs, glib, image-transport, rclcpp, rclcpp-components, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-camera-aravis2";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/camera_aravis2-release/archive/release/iron/camera_aravis2/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a329b2b12a046fcde2726748633825a2b764ffe0a89582fe2e8a94158f30424e";
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
