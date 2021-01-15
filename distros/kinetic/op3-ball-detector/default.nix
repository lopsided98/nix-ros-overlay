
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, image-transport, libyamlcpp, message-generation, message-runtime, opencv3, roscpp, roslib, sensor-msgs, std-msgs, usb-cam, uvc-camera }:
buildRosPackage {
  pname = "ros-kinetic-op3-ball-detector";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_demo-release/archive/release/kinetic/op3_ball_detector/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "8bb00a403db528463977ca3d432f4be635d27c91366963b156f37116f1930e86";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost cv-bridge dynamic-reconfigure geometry-msgs image-transport libyamlcpp message-runtime opencv3 roscpp roslib sensor-msgs std-msgs usb-cam uvc-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements a circle-like shape detector of the input image.
    It requires and input image and publish, at frame rate, a marked image
    and a stamped array of circle centers and radius.'';
    license = with lib.licenses; [ asl20 ];
  };
}
