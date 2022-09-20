
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, catkin, ffmpeg, image-transport, roscpp, sensor-msgs, std-msgs, std-srvs, v4l-utils }:
buildRosPackage {
  pname = "ros-melodic-usb-cam";
  version = "0.3.6";

  src = fetchurl {
    url = "https://github.com/ros-gbp/usb_cam-release/archive/release/melodic/usb_cam/0.3.6-0.tar.gz";
    name = "0.3.6-0.tar.gz";
    sha256 = "21a2fa956af929b771c989bdb53a572443481b101cea0ba0b66547e0440a9bd5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ camera-info-manager ffmpeg image-transport roscpp sensor-msgs std-msgs std-srvs v4l-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS Driver for V4L USB Cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
