
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, diagnostic-updater, image-transport, message-filters, nav-msgs, rclcpp, rclcpp-components, rtabmap-conversions, rtabmap-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-rtabmap-sync";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/iron/rtabmap_sync/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "a7f689257b0269252b11f43370e10f359cdfb86cdb997f01013e240c7876da7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ cv-bridge diagnostic-updater image-transport message-filters nav-msgs rclcpp rclcpp-components rtabmap-conversions rtabmap-msgs sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''RTAB-Map's synchronization package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
