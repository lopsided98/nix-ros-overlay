
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, camera-info-manager, diagnostic-msgs, diagnostic-updater, image-proc, image-transport, message-filters, rclcpp, rclcpp-components, sensor-msgs, std-msgs, stereo-image-proc }:
buildRosPackage {
  pname = "ros-humble-avt-vimba-camera";
  version = "2001.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/avt_vimba_camera-release/archive/release/humble/avt_vimba_camera/2001.1.0-3.tar.gz";
    name = "2001.1.0-3.tar.gz";
    sha256 = "a38635ed3d00bdf9bb880034a95d048660804d0462e1d72eae3fecdc661d7056";
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
