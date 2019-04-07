
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, image-transport, sensor-msgs, cv-bridge, message-filters, catkin, tf2-ros, image-geometry, tf2, rostest, eigen-conversions, nodelet, stereo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-depth-image-proc";
  version = "1.12.23";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/depth_image_proc/1.12.23-0.tar.gz;
    sha256 = "3a76ec1ddab6ba17658827778c354189ce176c4e05ffcc60356d9654ca3b4aa5";
  };

  buildInputs = [ boost cmake-modules image-transport sensor-msgs cv-bridge message-filters tf2-ros image-geometry tf2 eigen-conversions nodelet stereo-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ tf2 boost nodelet image-transport eigen-conversions cv-bridge tf2-ros image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains nodelets for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    #license = lib.licenses.BSD;
  };
}
