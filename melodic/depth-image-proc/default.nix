
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, image-transport, sensor-msgs, cv-bridge, catkin, message-filters, tf2-ros, image-geometry, rostest, tf2, eigen-conversions, nodelet, stereo-msgs }:
buildRosPackage {
  pname = "ros-melodic-depth-image-proc";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/depth_image_proc/1.12.23-0.tar.gz;
    sha256 = "afd0f4eaae77e022b7c340519fda4b5c170e9fca7bfed5cc6888b0f081ad85a9";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ tf2 boost nodelet image-transport eigen-conversions cv-bridge tf2-ros image-geometry ];
  nativeBuildInputs = [ boost cmake-modules image-transport sensor-msgs cv-bridge message-filters catkin tf2-ros image-geometry tf2 eigen-conversions nodelet stereo-msgs ];

  meta = {
    description = ''Contains nodelets for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    #license = lib.licenses.BSD;
  };
}
