
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-polled-camera";
  version = "1.11.13";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/kinetic/polled_camera/1.11.13-0.tar.gz";
    name = "1.11.13-0.tar.gz";
    sha256 = "4c30bb506474e7c9c0d2d4676d48ca86bdaae3bc5d223420db610d2163a2fbfa";
  };

  buildType = "catkin";
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
