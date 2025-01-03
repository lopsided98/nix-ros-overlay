
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, diagnostic-updater, image-transport, message-filters, nav-msgs, rclcpp, rclcpp-components, rtabmap-conversions, rtabmap-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-sync";
  version = "0.21.9-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_sync/0.21.9-1.tar.gz";
    name = "0.21.9-1.tar.gz";
    sha256 = "293547de387ec7c392f23c18c169efb5b234727955231eb0af24d5811450753f";
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
