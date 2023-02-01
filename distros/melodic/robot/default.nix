
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, diagnostics, executive-smach, filters, geometry, joint-state-publisher, kdl-parser, kdl-parser-py, robot-state-publisher, ros-base, urdf, urdf-parser-plugin, xacro }:
buildRosPackage {
  pname = "ros-melodic-robot";
  version = "1.4.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "metapackages-release";
        rev = "release/melodic/robot/1.4.1-0";
        sha256 = "sha256-BsE2fdWFopj9YpUR57iR+hUbHav6Ic0o17eTDdbuN2o=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-msgs diagnostics executive-smach filters geometry joint-state-publisher kdl-parser kdl-parser-py robot-state-publisher ros-base urdf urdf-parser-plugin xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage which extends ros_base and includes ROS libaries for any robot hardware. It may not contain any GUI dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
