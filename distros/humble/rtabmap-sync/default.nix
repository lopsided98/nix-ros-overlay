
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, diagnostic-updater, image-transport, message-filters, nav-msgs, rclcpp, rclcpp-components, rtabmap-conversions, rtabmap-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-rtabmap-sync";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_sync/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "1464bd6b71cf68e430b170bfb88300f245ec418c1ec3c29b0dbf7e9b6d5f5734";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ cv-bridge diagnostic-updater image-transport message-filters nav-msgs rclcpp rclcpp-components rtabmap-conversions rtabmap-msgs sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's synchronization package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
