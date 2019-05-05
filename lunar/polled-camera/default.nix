
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-polled-camera";
  version = "1.11.13";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_common-release/archive/release/lunar/polled_camera/1.11.13-0.tar.gz;
    sha256 = "5da5d907214530c0126171b13a9cfc6aaf550ab11969597bc9f26916dbfa0398";
  };

  buildInputs = [ image-transport sensor-msgs message-generation std-msgs roscpp ];
  propagatedBuildInputs = [ image-transport sensor-msgs message-runtime std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''polled_camera contains a service and C++ helper classes for implementing a polled
     camera driver node and requesting images from it. The package is currently for
     internal use as the API is still under development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
