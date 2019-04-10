
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, image-transport, sensor-msgs, roscpp, catkin }:
buildRosPackage {
  pname = "ros-lunar-jpeg-streamer";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/camera_umd-release/archive/release/lunar/jpeg_streamer/0.2.5-0.tar.gz;
    sha256 = "6a9c3148dde80b45b8bab45b637ab6da3bb388b466aeb49d1d6c8f236a41fff4";
  };

  buildInputs = [ image-transport sensor-msgs roscpp ];
  propagatedBuildInputs = [ image-transport sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tools for streaming JPEG-formatted CompressedImage topics over HTTP'';
    #license = lib.licenses.BSD;
  };
}
