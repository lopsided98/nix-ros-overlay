
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, cv-bridge, eigen-conversions, image-geometry, image-transport, message-filters, nodelet, rostest, sensor-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-depth-image-proc";
  version = "1.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/depth_image_proc/1.15.2-1.tar.gz";
    name = "1.15.2-1.tar.gz";
    sha256 = "bace13cb6af5a602c4356390a0dc4dea01d54bea2eceacbead2f5f7d8a1e95bd";
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
