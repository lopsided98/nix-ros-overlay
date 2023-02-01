
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, eigen, fetch-auto-dock-msgs, fetch-driver-msgs, geometry-msgs, nav-msgs, roscpp, roslib, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-fetch-open-auto-dock";
  version = "0.1.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fetchrobotics-gbp";
        repo = "fetch_open_auto_dock-gbp";
        rev = "release/melodic/fetch_open_auto_dock/0.1.2-0";
        sha256 = "sha256-ou6pASSlpaPncSfLRYMmQw3QtrWS84MphEBNQjO3Shg=";
      };

  buildType = "catkin";
  buildInputs = [ angles catkin ];
  propagatedBuildInputs = [ actionlib eigen fetch-auto-dock-msgs fetch-driver-msgs geometry-msgs nav-msgs roscpp roslib rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An open-source version of the Fetch charge docking system.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
