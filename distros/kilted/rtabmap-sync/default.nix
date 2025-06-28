
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, diagnostic-updater, image-transport, message-filters, nav-msgs, rclcpp, rclcpp-components, rtabmap-conversions, rtabmap-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-sync";
  version = "0.22.0-r2";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_sync/0.22.0-2.tar.gz";
    name = "0.22.0-2.tar.gz";
    sha256 = "eb278759696cc4c3ffbb2771e0814f64255a89d1a5d4188a65c89dc6151fda65";
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
