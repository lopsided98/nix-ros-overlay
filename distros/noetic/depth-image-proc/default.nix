
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, cv-bridge, eigen-conversions, image-geometry, image-transport, message-filters, nodelet, rostest, sensor-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-depth-image-proc";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/noetic/depth_image_proc/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "7c544ac45766a57cb9375a00c56156ecec07133c4ebf1166b7325712df69020f";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-filters stereo-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost cv-bridge eigen-conversions image-geometry image-transport nodelet sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains nodelets for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
