
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cob-object-detection-msgs, image-transport, sensor-msgs, cv-bridge, pcl, message-filters, catkin, roscpp, pcl-ros, eigen-conversions, visualization-msgs, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-cob-object-detection-visualizer";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_object_detection_visualizer/0.6.14-1.tar.gz;
    sha256 = "58aaadb7bd93299f43858c0fb1521159fb046d13f5138ec43f1179888b5224bc";
  };

  buildInputs = [ boost cob-object-detection-msgs image-transport sensor-msgs cv-bridge message-filters pcl roscpp pcl-ros eigen-conversions visualization-msgs opencv3 ];
  propagatedBuildInputs = [ boost cob-object-detection-msgs image-transport sensor-msgs cv-bridge message-filters pcl roscpp pcl-ros eigen-conversions visualization-msgs opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_object_detection_visualizer package'';
    license = with lib.licenses; [ asl20 ];
  };
}
