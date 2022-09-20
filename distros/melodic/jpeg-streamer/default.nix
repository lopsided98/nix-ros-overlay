
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, image-transport, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-jpeg-streamer";
  version = "0.2.7";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/camera_umd-release/archive/release/melodic/jpeg_streamer/0.2.7-0.tar.gz";
    name = "0.2.7-0.tar.gz";
    sha256 = "2f2d7e91f8743383d48353d1fc7fbbcd47ad1438a9029949cdd499ce3885e221";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ image-transport roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tools for streaming JPEG-formatted CompressedImage topics over HTTP'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
