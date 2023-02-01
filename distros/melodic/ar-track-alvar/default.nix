
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar-msgs, catkin, cmake-modules, cv-bridge, dynamic-reconfigure, geometry-msgs, image-transport, message-generation, message-runtime, pcl-conversions, pcl-ros, resource-retriever, rosbag, roscpp, rospy, rostest, sensor-msgs, std-msgs, tf, tf2, tinyxml, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-ar-track-alvar";
  version = "0.7.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ar_track_alvar-release";
        rev = "release/melodic/ar_track_alvar/0.7.1-0";
        sha256 = "sha256-7bD2j66pf4POAYagS0g7nyE7R6klOWQTCgRd9sFCfsc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation ];
  checkInputs = [ rosbag rostest ];
  propagatedBuildInputs = [ ar-track-alvar-msgs cv-bridge dynamic-reconfigure geometry-msgs image-transport message-runtime pcl-conversions pcl-ros resource-retriever roscpp rospy sensor-msgs std-msgs tf tf2 tinyxml visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a ROS wrapper for Alvar, an open source AR tag tracking library.'';
    license = with lib.licenses; [ "LGPL-2.1-only" ];
  };
}
