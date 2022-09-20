
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, camera-info-manager, diagnostic-msgs, diagnostic-updater, image-proc, image-transport, message-filters, rclcpp, rclcpp-components, sensor-msgs, std-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-foxy-avt-vimba-camera";
  version = "2001.1.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/avt_vimba_camera-release/archive/release/foxy/avt_vimba_camera/2001.1.0-1.tar.gz";
    name = "2001.1.0-1.tar.gz";
    sha256 = "78af7ea4ae8548664db0e401394f4f9a090bbf04b9c556f3be808fcb5fd96e30";
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
