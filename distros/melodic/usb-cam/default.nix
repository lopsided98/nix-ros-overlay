
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, cv-bridge, ffmpeg, image-transport, roscpp, sensor-msgs, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-melodic-usb-cam";
  version = "0.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/usb_cam-release/archive/release/melodic/usb_cam/0.3.7-1.tar.gz";
    name = "0.3.7-1.tar.gz";
    sha256 = "44a446d1649e0083568926135fbc62225da508a763bdb8bc509ddadd6ccf41ed";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge ffmpeg image-transport roscpp sensor-msgs std-msgs std-srvs v4l-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS Driver for V4L USB Cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
