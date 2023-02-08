
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, diagnostics, executive-smach, filters, geometry, joint-state-publisher, kdl-parser, robot-state-publisher, ros-base, urdf, urdf-parser-plugin, xacro }:
buildRosPackage {
  pname = "ros-noetic-robot";
  version = "1.5.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "metapackages-release";
        rev = "release/noetic/robot/1.5.0-1";
        sha256 = "sha256-4j4eUhU10uecGbVJV4kfJ/dO/6BcEndgwOT1FtLvDrw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-msgs diagnostics executive-smach filters geometry joint-state-publisher kdl-parser robot-state-publisher ros-base urdf urdf-parser-plugin xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage which extends ros_base and includes ROS libaries for any robot hardware. It may not contain any GUI dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
