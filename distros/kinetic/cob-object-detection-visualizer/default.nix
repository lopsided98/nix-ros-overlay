
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-object-detection-msgs, cv-bridge, eigen-conversions, image-transport, message-filters, pcl-ros, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-object-detection-visualizer";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_object_detection_visualizer/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "51ea4da6346a934e58b890d15ce37cb0f7b6ee67c170a4981ef5af05c51e2877";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-object-detection-msgs cv-bridge eigen-conversions image-transport message-filters pcl-ros roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_object_detection_visualizer package visualizes the object detection result.'';
    license = with lib.licenses; [ asl20 ];
  };
}
