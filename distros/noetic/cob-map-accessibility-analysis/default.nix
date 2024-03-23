
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-3d-mapping-msgs, cv-bridge, geometry-msgs, image-transport, message-filters, message-generation, message-runtime, nav-msgs, opencv, pcl, pcl-ros, python3Packages, roscpp, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-cob-map-accessibility-analysis";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/noetic/cob_map_accessibility_analysis/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "d62289db9a793638c1bf1ed9ab2956ac5cb1cf9896b68e33264778f43945316e";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  propagatedBuildInputs = [ boost cob-3d-mapping-msgs cv-bridge geometry-msgs image-transport message-filters message-runtime nav-msgs opencv opencv.cxxdev pcl pcl-ros roscpp rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "cob_map_accessibility_analysis receives the map from navigation as well as obstacles and inflates_obstacles topics to assemble a common obstacle map. Upon request, this node checks the accessibility of poses within thin map by (i) checking whether the pose itself is free and by (ii) checking whether there is a closed path from robot to the goal pose.";
    license = with lib.licenses; [ asl20 ];
  };
}
