
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-3d-mapping-msgs, cv-bridge, geometry-msgs, image-transport, message-filters, message-generation, message-runtime, nav-msgs, opencv3, pcl, pcl-ros, roscpp, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-cob-map-accessibility-analysis";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_map_accessibility_analysis/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "1b5520971ce083fb0f4eb241d9e4ea6525f416d7af68e893e6f49a3bafae4974";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost cob-3d-mapping-msgs cv-bridge geometry-msgs image-transport message-filters message-runtime nav-msgs opencv3 pcl pcl-ros roscpp rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_map_accessibility_analysis receives the map from navigation as well as obstacles and inflates_obstacles topics to assemble a common obstacle map. Upon request, this node checks the accessibility of poses within thin map by (i) checking whether the pose itself is free and by (ii) checking whether there is a closed path from robot to the goal pose.'';
    license = with lib.licenses; [ asl20 ];
  };
}
