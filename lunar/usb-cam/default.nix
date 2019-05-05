
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, camera-info-manager, image-transport, sensor-msgs, catkin, ffmpeg, std-msgs, roscpp, v4l_utils }:
buildRosPackage {
  pname = "ros-lunar-usb-cam";
  version = "0.3.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/usb_cam-release/archive/release/lunar/usb_cam/0.3.6-0.tar.gz;
    sha256 = "b1a8ad230eda5595d82de4fcade00e96737a747768e0019d52c4704ea4dbfdf0";
  };

  buildInputs = [ std-srvs camera-info-manager image-transport sensor-msgs ffmpeg std-msgs roscpp ];
  propagatedBuildInputs = [ std-srvs camera-info-manager image-transport sensor-msgs ffmpeg std-msgs roscpp v4l_utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS Driver for V4L USB Cameras'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
