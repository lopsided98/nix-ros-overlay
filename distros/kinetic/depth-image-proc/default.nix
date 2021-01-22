
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, cv-bridge, eigen-conversions, image-geometry, image-transport, message-filters, nodelet, rostest, sensor-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-depth-image-proc";
  version = "1.12.23";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/kinetic/depth_image_proc/1.12.23-0.tar.gz";
    name = "1.12.23-0.tar.gz";
    sha256 = "3a76ec1ddab6ba17658827778c354189ce176c4e05ffcc60356d9654ca3b4aa5";
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
