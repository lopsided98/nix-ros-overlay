
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, statistics-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-image-exposure-msgs";
  version = "0.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/pointgrey_camera_driver-release/archive/release/noetic/image_exposure_msgs/0.15.0-1.tar.gz";
    name = "0.15.0-1.tar.gz";
    sha256 = "2b9a6a7f16a46e84d8daa950430e3b3cdbe23ab5399ab6dde4161e3509fb705a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime statistics-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages related to the Point Grey camera driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
