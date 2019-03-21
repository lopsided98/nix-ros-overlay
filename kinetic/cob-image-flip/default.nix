
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-perception-msgs, pluginlib, boost, image-transport, sensor-msgs, cv-bridge, catkin, pcl-conversions, roscpp, nodelet, pcl-ros, tf, opencv3, geometry-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-image-flip";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_image_flip/0.6.13-0.tar.gz;
    sha256 = "3479d5189488d7f6a7fe865e7d62a8f576c5a55c595f98bde7044ef362af8c9f";
  };

  propagatedBuildInputs = [ cob-perception-msgs pluginlib boost opencv3 image-transport sensor-msgs cv-bridge roscpp nodelet pcl-ros tf pcl-conversions geometry-msgs stereo-msgs ];
  nativeBuildInputs = [ cob-perception-msgs pluginlib boost opencv3 image-transport sensor-msgs cv-bridge catkin roscpp nodelet pcl-ros tf pcl-conversions geometry-msgs stereo-msgs ];

  meta = {
    description = ''Flips the image of Care-O-bots kinect in dependence of the viewing direction of the cameras to receive an upright image all the time.'';
    #license = lib.licenses.Apache 2.0;
  };
}
