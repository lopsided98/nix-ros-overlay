
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-transport, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-polled-camera";
  version = "1.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/noetic/polled_camera/1.12.1-1.tar.gz";
    name = "1.12.1-1.tar.gz";
    sha256 = "a7173b8bd8266ff81dc35d7ab2e56ea06078a7c02c73b5690af835135d226a35";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ image-transport message-runtime roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "polled_camera contains a service and C++ helper classes for implementing a polled
     camera driver node and requesting images from it. The package is currently for
     internal use as the API is still under development.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
