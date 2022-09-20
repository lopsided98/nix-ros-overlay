
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-3d-mapping-msgs, cv-bridge, geometry-msgs, image-transport, message-filters, message-generation, message-runtime, nav-msgs, opencv, pcl, pcl-ros, pythonPackages, roscpp, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-map-accessibility-analysis";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_navigation-release/archive/release/melodic/cob_map_accessibility_analysis/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "23d57e3828714a20e3eeb4ea87c17137bd49ca6c53733ef4942f2e8f8f4c0b95";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation pythonPackages.setuptools ];
  propagatedBuildInputs = [ boost cob-3d-mapping-msgs cv-bridge geometry-msgs image-transport message-filters message-runtime nav-msgs opencv pcl pcl-ros roscpp rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''cob_map_accessibility_analysis receives the map from navigation as well as obstacles and inflates_obstacles topics to assemble a common obstacle map. Upon request, this node checks the accessibility of poses within thin map by (i) checking whether the pose itself is free and by (ii) checking whether there is a closed path from robot to the goal pose.'';
    license = with lib.licenses; [ asl20 ];
  };
}
