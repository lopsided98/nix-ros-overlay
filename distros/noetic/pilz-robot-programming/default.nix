
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, code-coverage, moveit-commander, pilz-industrial-motion-planner, pilz-industrial-motion-testutils, pilz-msgs, prbt-hardware-support, prbt-moveit-config, prbt-pg70-support, python3Packages, roslint, rospy, rostest, rosunit, tf-conversions, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-pilz-robot-programming";
  version = "0.5.0-r4";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "PilzDE";
        repo = "pilz_industrial_motion-release";
        rev = "release/noetic/pilz_robot_programming/0.5.0-4";
        sha256 = "sha256-WZSJzQBaw263V9h1TLizLAd3BI9mA6DpiWaReZr13xA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ code-coverage pilz-industrial-motion-testutils prbt-hardware-support prbt-moveit-config prbt-pg70-support python3Packages.coverage python3Packages.docopt python3Packages.mock rostest rosunit ];
  propagatedBuildInputs = [ moveit-commander pilz-industrial-motion-planner pilz-msgs python3Packages.psutil rospy tf-conversions tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An Easy to use API to execute standard industrial robot commands like Ptp, Lin, Circ and Sequence using Moveit.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
