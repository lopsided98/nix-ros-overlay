
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, camera-info-manager, diagnostic-msgs, diagnostic-updater, image-proc, image-transport, message-filters, rclcpp, rclcpp-components, sensor-msgs, std-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-jazzy-avt-vimba-camera";
  version = "2001.1.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/avt_vimba_camera-release/archive/release/jazzy/avt_vimba_camera/2001.1.0-6.tar.gz";
    name = "2001.1.0-6.tar.gz";
    sha256 = "4bb6c619ca8f0e99a45f776cab4dc5e139a84911817c3da32270198c1ac1cc63";
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
