
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, dynamic-reconfigure, image-proc, catkin, image-transport, stereo-msgs, cv-bridge, nodelet, rostest, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-stereo-image-proc";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/stereo_image_proc/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "1fdf61f54066371c870907f5e6027d64e4c3f152abb74190048a6642d48d2f7f";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters dynamic-reconfigure image-proc image-transport stereo-msgs cv-bridge nodelet image-geometry ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ sensor-msgs message-filters dynamic-reconfigure image-proc image-transport stereo-msgs cv-bridge nodelet image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Stereo and single image rectification and disparity processing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
