
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, boost, message-filters, sensor-msgs, eigen-conversions, cob-object-detection-msgs, catkin, pcl, image-transport, cv-bridge, visualization-msgs, roscpp, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-cob-object-detection-visualizer";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/kinetic/cob_object_detection_visualizer/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "58aaadb7bd93299f43858c0fb1521159fb046d13f5138ec43f1179888b5224bc";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros boost message-filters sensor-msgs eigen-conversions cob-object-detection-msgs roscpp pcl image-transport cv-bridge visualization-msgs opencv3 ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs boost message-filters eigen-conversions cob-object-detection-msgs pcl image-transport cv-bridge visualization-msgs roscpp opencv3 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_object_detection_visualizer package'';
    license = with lib.licenses; [ asl20 ];
  };
}
