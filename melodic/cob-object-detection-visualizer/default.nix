
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-object-detection-msgs, cv-bridge, eigen-conversions, image-transport, message-filters, opencv3, pcl, pcl-ros, roscpp, sensor-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-object-detection-visualizer";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_perception_common-release/archive/release/melodic/cob_object_detection_visualizer/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "6f69b00121d7cb02ff0da6cbe8867092c3a752238dd84fa3664cb75ff6bf6df7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cob-object-detection-msgs cv-bridge eigen-conversions image-transport message-filters opencv3 pcl pcl-ros roscpp sensor-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_object_detection_visualizer package'';
    license = with lib.licenses; [ asl20 ];
  };
}
