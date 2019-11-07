
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, tf, image-transport, sensor-msgs, catkin, cv-bridge, pcl, message-filters, nav-msgs, cob-3d-mapping-msgs, message-generation, message-runtime, pcl-ros, rospy, roscpp, opencv3, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-map-accessibility-analysis";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_map_accessibility_analysis/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "d9f16525dec9057d3ea009ae214fa5917bc5becc62a0a35e28a07e547d53b459";
  };

  buildType = "catkin";
  buildInputs = [ boost image-transport sensor-msgs cv-bridge message-filters pcl roscpp message-generation nav-msgs cob-3d-mapping-msgs pcl-ros tf opencv3 geometry-msgs ];
  propagatedBuildInputs = [ boost opencv3 pcl sensor-msgs image-transport message-filters cv-bridge roscpp cob-3d-mapping-msgs nav-msgs message-runtime rospy tf pcl-ros geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_map_accessibility_analysis receives the map from navigation as well as obstacles and inflates_obstacles topics to assemble a common obstacle map. Upon request, this node checks the accessibility of poses within thin map by (i) checking whether the pose itself is free and by (ii) checking whether there is a closed path from robot to the goal pose.'';
    license = with lib.licenses; [ asl20 ];
  };
}
