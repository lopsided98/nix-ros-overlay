
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-core, moveit-resources, moveit-ros-planning, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-moveit-opw-kinematics-plugin";
  version = "0.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "JeroenDM";
        repo = "moveit_opw_kinematics_plugin-release";
        rev = "release/melodic/moveit_opw_kinematics_plugin/0.2.1-1";
        sha256 = "sha256-g4GrjZH+QWCJmZ8epOpjAeMDbH/7Kv+xrej+myzRlBw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin eigen-conversions ];
  checkInputs = [ moveit-resources moveit-ros-planning rostest ];
  propagatedBuildInputs = [ moveit-core pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      MoveIt kinematics plugin for industrial robots.
    </p>
    <p>
      This plugin uses an analytical inverse kinematic library, opw_kinematics,
      to calculate the inverse kinematics for industrial robots with 6 degrees of freedom,
      two parallel joints, and a spherical wrist.
    </p>'';
    license = with lib.licenses; [ asl20 ];
  };
}
