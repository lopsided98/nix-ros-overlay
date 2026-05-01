
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, camera-info-manager, diagnostic-msgs, diagnostic-updater, image-proc, image-transport, message-filters, rclcpp, rclcpp-components, sensor-msgs, std-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-lyrical-avt-vimba-camera";
  version = "2001.1.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/avt_vimba_camera-release/archive/release/lyrical/avt_vimba_camera/2001.1.0-7.tar.gz";
    name = "2001.1.0-7.tar.gz";
    sha256 = "fa9b1139beb12777f6b53a392b4be0bab9e4a1fe85d3d4db353ccd1938a77ab7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ camera-info-manager diagnostic-msgs diagnostic-updater image-proc image-transport message-filters rclcpp rclcpp-components sensor-msgs std-msgs stereo-image-proc ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Camera driver for Allied Vision Technologies (AVT) cameras, based on their Vimba SDK.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
