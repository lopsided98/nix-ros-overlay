
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-object-detection-msgs, cv-bridge, eigen-conversions, image-transport, message-filters, opencv3, pcl, pcl-ros, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-object-detection-visualizer";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_object_detection_visualizer/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "08226e1ae1acda5a369fb8b06e8a6ee9f0e542c6a06a2779d19079838126825e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cob-object-detection-msgs cv-bridge eigen-conversions image-transport message-filters opencv3 pcl pcl-ros roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_object_detection_visualizer package visualizes the object detection result.'';
    license = with lib.licenses; [ asl20 ];
  };
}
