
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, image-transport, message-filters, nav-msgs, rclcpp, rclcpp-components, rtabmap-conversions, rtabmap-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-rtabmap-sync";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/foxy/rtabmap_sync/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "6c0d48c8e1c875334e1db56c4bfcfc8c498548b2c9abed3b3aa3721b56905a2b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ cv-bridge image-transport message-filters nav-msgs rclcpp rclcpp-components rtabmap-conversions rtabmap-msgs sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''RTAB-Map's synchronization package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
