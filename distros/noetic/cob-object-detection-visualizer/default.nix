
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-object-detection-msgs, cv-bridge, eigen-conversions, image-transport, message-filters, pcl-ros, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-object-detection-visualizer";
  version = "0.6.19-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/noetic/cob_object_detection_visualizer/0.6.19-1.tar.gz";
    name = "0.6.19-1.tar.gz";
    sha256 = "70c64219bb8f8f7bd3316550733227c9defcdbace1172268308370caf34bc925";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-object-detection-msgs cv-bridge eigen-conversions image-transport message-filters pcl-ros roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_object_detection_visualizer package visualizes the object detection result.'';
    license = with lib.licenses; [ asl20 ];
  };
}
