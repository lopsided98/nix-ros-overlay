
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, cv-bridge, eigen-conversions, image-geometry, image-transport, message-filters, nodelet, rostest, sensor-msgs, stereo-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-depth-image-proc";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/depth_image_proc/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "9ef587dfb94e1ce789b97f3287d361570fd4e14019c248fa388797d388e839a2";
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
