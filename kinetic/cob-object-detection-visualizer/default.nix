
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cob-object-detection-msgs, image-transport, sensor-msgs, cv-bridge, catkin, pcl, message-filters, roscpp, pcl-ros, eigen-conversions, visualization-msgs, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-cob-object-detection-visualizer";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_object_detection_visualizer/0.6.13-0.tar.gz;
    sha256 = "06c2c4b70eb47546eee6232defe68a33d4688d361ffb86d56dad7bd7fc3298a0";
  };

  propagatedBuildInputs = [ boost cob-object-detection-msgs image-transport sensor-msgs cv-bridge message-filters pcl roscpp pcl-ros eigen-conversions visualization-msgs opencv3 ];
  nativeBuildInputs = [ boost cob-object-detection-msgs image-transport sensor-msgs cv-bridge message-filters pcl roscpp catkin pcl-ros eigen-conversions visualization-msgs opencv3 ];

  meta = {
    description = ''The cob_object_detection_visualizer package'';
    #license = lib.licenses.Apache 2.0;
  };
}
