
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, cv-bridge, eigen-conversions, image-geometry, image-transport, message-filters, nodelet, rostest, sensor-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-depth-image-proc";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/depth_image_proc/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "9bb74785d59b1e2cdecb8387b842bd95239d7b280f17d6c2a2284f593f69736b";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules message-filters sensor-msgs stereo-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost cv-bridge eigen-conversions image-geometry image-transport nodelet tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains nodelets for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
