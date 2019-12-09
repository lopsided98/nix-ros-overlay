
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-runtime, std-msgs, catkin, image-transport, roscpp, message-generation }:
buildRosPackage {
  pname = "ros-melodic-polled-camera";
  version = "1.11.13";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_common-release/archive/release/melodic/polled_camera/1.11.13-0.tar.gz";
    name = "1.11.13-0.tar.gz";
    sha256 = "87717ae0569b27aeccb0c84c372ef5e5b16ea23e4549f918d7a2ad1ba88464f3";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs std-msgs image-transport roscpp message-generation ];
  propagatedBuildInputs = [ sensor-msgs std-msgs image-transport roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''polled_camera contains a service and C++ helper classes for implementing a polled
     camera driver node and requesting images from it. The package is currently for
     internal use as the API is still under development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
