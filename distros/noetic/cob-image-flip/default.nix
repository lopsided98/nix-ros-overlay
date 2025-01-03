
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-perception-msgs, cv-bridge, geometry-msgs, image-transport, nodelet, pcl-conversions, pcl-ros, pluginlib, roscpp, sensor-msgs, stereo-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-image-flip";
  version = "0.6.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/cob_image_flip/0.6.20-1.tar.gz";
    name = "0.6.20-1.tar.gz";
    sha256 = "c99f87ee9d87adfee1567f54c9d6330772cfcb3f7474b4b1b2972f16e36c8fe3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-perception-msgs cv-bridge geometry-msgs image-transport nodelet pcl-conversions pcl-ros pluginlib roscpp sensor-msgs stereo-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Flips the image of Care-O-bots kinect in dependence of the viewing direction of the cameras to receive an upright image all the time.";
    license = with lib.licenses; [ asl20 ];
  };
}
