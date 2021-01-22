
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-transport, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jpeg-streamer";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/camera_umd-release/archive/release/kinetic/jpeg_streamer/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "bc0ec3ece34d11640edfd7538271d5f5233d3d41157e2859b9010fb6edc8e18b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ image-transport roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tools for streaming JPEG-formatted CompressedImage topics over HTTP'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
