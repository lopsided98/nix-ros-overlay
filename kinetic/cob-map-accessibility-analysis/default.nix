
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pcl-ros, boost, message-filters, geometry-msgs, sensor-msgs, message-runtime, cob-3d-mapping-msgs, tf, catkin, pcl, image-transport, cv-bridge, rospy, roscpp, message-generation, nav-msgs, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-cob-map-accessibility-analysis";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_map_accessibility_analysis/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "1b5520971ce083fb0f4eb241d9e4ea6525f416d7af68e893e6f49a3bafae4974";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros boost message-filters geometry-msgs sensor-msgs tf roscpp pcl image-transport cv-bridge opencv3 message-generation nav-msgs cob-3d-mapping-msgs ];
  propagatedBuildInputs = [ pcl-ros sensor-msgs boost geometry-msgs opencv3 message-runtime message-filters tf pcl image-transport cv-bridge roscpp rospy nav-msgs cob-3d-mapping-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_map_accessibility_analysis receives the map from navigation as well as obstacles and inflates_obstacles topics to assemble a common obstacle map. Upon request, this node checks the accessibility of poses within thin map by (i) checking whether the pose itself is free and by (ii) checking whether there is a closed path from robot to the goal pose.'';
    license = with lib.licenses; [ asl20 ];
  };
}
