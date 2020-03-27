
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-object-detection-msgs, cv-bridge, eigen-conversions, image-transport, message-filters, opencv3, pcl, pcl-ros, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-object-detection-visualizer";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_object_detection_visualizer/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "4024bbc081c92e40bc3cbe361b6c944b6c2f2a70eb5942810c1515175581f955";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cob-object-detection-msgs cv-bridge eigen-conversions image-transport message-filters opencv3 pcl pcl-ros roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_object_detection_visualizer package visualizes the object detection result.'';
    license = with lib.licenses; [ asl20 ];
  };
}
