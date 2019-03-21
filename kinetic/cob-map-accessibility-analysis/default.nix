
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, tf, image-transport, sensor-msgs, catkin, cv-bridge, pcl, message-filters, nav-msgs, cob-3d-mapping-msgs, message-generation, message-runtime, pcl-ros, rospy, roscpp, opencv3, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-map-accessibility-analysis";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_map_accessibility_analysis/0.6.7-0.tar.gz;
    sha256 = "143520de9742bcf0e4737cf3ddfe8fad8223fa7ba3a6f450fb16c73c7540337f";
  };

  propagatedBuildInputs = [ boost image-transport sensor-msgs cv-bridge message-filters pcl roscpp nav-msgs cob-3d-mapping-msgs message-runtime pcl-ros rospy tf opencv3 geometry-msgs ];
  nativeBuildInputs = [ boost image-transport sensor-msgs cv-bridge message-filters pcl roscpp catkin message-generation nav-msgs cob-3d-mapping-msgs pcl-ros tf opencv3 geometry-msgs ];

  meta = {
    description = ''cob_map_accessibility_analysis receives the map from navigation as well as obstacles and inflates_obstacles topics to assemble a common obstacle map. Upon request, this node checks the accessibility of poses within thin map by (i) checking whether the pose itself is free and by (ii) checking whether there is a closed path from robot to the goal pose.'';
    #license = lib.licenses.Apache 2.0;
  };
}
