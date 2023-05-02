
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, image-transport, message-filters, nav-msgs, rclcpp, rclcpp-components, rtabmap-conversions, rtabmap-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-rtabmap-sync";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_sync/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "4cd79d8fad06681b621c23b514bc6ae0803f93d30f2fc381763d3153b93cc589";
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
