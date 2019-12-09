
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, geometry-msgs, dynamic-reconfigure, message-runtime, std-msgs, usb-cam, catkin, roslib, image-transport, libyamlcpp, uvc-camera, cv-bridge, roscpp, message-generation, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-op3-ball-detector";
  version = "0.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/robotis_op3_demo-release/archive/release/kinetic/op3_ball_detector/0.1.0-0.tar.gz";
    name = "0.1.0-0.tar.gz";
    sha256 = "8bb00a403db528463977ca3d432f4be635d27c91366963b156f37116f1930e86";
  };

  buildType = "catkin";
  buildInputs = [ boost sensor-msgs geometry-msgs dynamic-reconfigure std-msgs roslib image-transport libyamlcpp cv-bridge roscpp message-generation opencv3 ];
  propagatedBuildInputs = [ sensor-msgs boost geometry-msgs dynamic-reconfigure std-msgs usb-cam roslib image-transport libyamlcpp uvc-camera cv-bridge roscpp message-runtime opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package implements a circle-like shape detector of the input image.
    It requires and input image and publish, at frame rate, a marked image
    and a stamped array of circle centers and radius.'';
    license = with lib.licenses; [ asl20 ];
  };
}
