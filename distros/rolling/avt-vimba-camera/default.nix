
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, camera-info-manager, diagnostic-msgs, diagnostic-updater, image-proc, image-transport, message-filters, rclcpp, rclcpp-components, sensor-msgs, std-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-rolling-avt-vimba-camera";
  version = "2001.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/avt_vimba_camera-release/archive/release/rolling/avt_vimba_camera/2001.1.0-4.tar.gz";
    name = "2001.1.0-4.tar.gz";
    sha256 = "15616913b03c1c9795694b6c436d9c6367f4c08d110d795503ce0193eacb33ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ camera-info-manager diagnostic-msgs diagnostic-updater image-proc image-transport message-filters rclcpp rclcpp-components sensor-msgs std-msgs stereo-image-proc ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Camera driver for Allied Vision Technologies (AVT) cameras, based on their Vimba SDK.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
