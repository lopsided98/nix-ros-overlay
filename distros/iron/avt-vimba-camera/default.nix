
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, camera-info-manager, diagnostic-msgs, diagnostic-updater, image-proc, image-transport, message-filters, rclcpp, rclcpp-components, sensor-msgs, std-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-iron-avt-vimba-camera";
  version = "2001.1.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/avt_vimba_camera-release/archive/release/iron/avt_vimba_camera/2001.1.0-5.tar.gz";
    name = "2001.1.0-5.tar.gz";
    sha256 = "9883b38a8583d279a35aacdc3ee31b0c34df20dea012c09d687e9361327ffbb3";
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
