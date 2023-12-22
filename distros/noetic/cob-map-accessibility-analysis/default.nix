
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-3d-mapping-msgs, cv-bridge, geometry-msgs, image-transport, message-filters, message-generation, message-runtime, nav-msgs, opencv, pcl, pcl-ros, python3Packages, roscpp, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-map-accessibility-analysis";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/noetic/cob_map_accessibility_analysis/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "8ff4e42e7b21d130cf09ccab4f127b4ad75d3bdcd406015bf6f1c5aa040fba8f";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  propagatedBuildInputs = [ boost cob-3d-mapping-msgs cv-bridge geometry-msgs image-transport message-filters message-runtime nav-msgs opencv opencv.cxxdev pcl pcl-ros roscpp rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''cob_map_accessibility_analysis receives the map from navigation as well as obstacles and inflates_obstacles topics to assemble a common obstacle map. Upon request, this node checks the accessibility of poses within thin map by (i) checking whether the pose itself is free and by (ii) checking whether there is a closed path from robot to the goal pose.'';
    license = with lib.licenses; [ asl20 ];
  };
}
