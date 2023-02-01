
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cob-3d-mapping-msgs, cv-bridge, geometry-msgs, image-transport, message-filters, message-generation, message-runtime, nav-msgs, opencv, pcl, pcl-ros, pythonPackages, roscpp, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-cob-map-accessibility-analysis";
  version = "0.6.11-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_navigation-release";
        rev = "release/melodic/cob_map_accessibility_analysis/0.6.11-1";
        sha256 = "sha256-cRMBZT8lS/Fdsm75dtCDxATrM4SRGeT10SDlcMfqw7Y=";
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
