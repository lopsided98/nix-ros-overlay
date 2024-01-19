
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-transport, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-polled-camera";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/noetic/polled_camera/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "ef7758bb4a5e8e9cde9fb84846474e2df5ed0051eb17913f901f7d7c7889973e";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ image-transport message-runtime roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''polled_camera contains a service and C++ helper classes for implementing a polled
     camera driver node and requesting images from it. The package is currently for
     internal use as the API is still under development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
