
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, boost, message-filters, sensor-msgs, eigen-conversions, cob-object-detection-msgs, catkin, pcl, image-transport, cv-bridge, visualization-msgs, roscpp, opencv3 }:
buildRosPackage {
  pname = "ros-melodic-cob-object-detection-visualizer";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_object_detection_visualizer/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "6f69b00121d7cb02ff0da6cbe8867092c3a752238dd84fa3664cb75ff6bf6df7";
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
