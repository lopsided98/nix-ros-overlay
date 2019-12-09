
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, boost, message-filters, eigen-conversions, cmake-modules, catkin, image-transport, stereo-msgs, cv-bridge, nodelet, tf2, rostest, tf2-ros, image-geometry }:
buildRosPackage {
  pname = "ros-melodic-depth-image-proc";
  version = "1.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/image_pipeline-release/archive/release/melodic/depth_image_proc/1.13.0-1.tar.gz";
    name = "1.13.0-1.tar.gz";
    sha256 = "9ef587dfb94e1ce789b97f3287d361570fd4e14019c248fa388797d388e839a2";
  };

  buildType = "catkin";
  buildInputs = [ boost message-filters sensor-msgs eigen-conversions cmake-modules image-transport stereo-msgs cv-bridge nodelet tf2 tf2-ros image-geometry ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost eigen-conversions image-transport cv-bridge nodelet tf2 tf2-ros image-geometry ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains nodelets for processing depth images such as those
     produced by OpenNI camera. Functions include creating disparity
     images and point clouds, as well as registering (reprojecting)
     a depth image into another camera frame.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
