
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-core, moveit-resources-fanuc-moveit-config, moveit-ros-planning, opw-kinematics, pluginlib, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-moveit-opw-kinematics-plugin";
  version = "0.4.0-r3";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "JeroenDM";
        repo = "moveit_opw_kinematics_plugin-release";
        rev = "release/noetic/moveit_opw_kinematics_plugin/0.4.0-3";
        sha256 = "sha256-oEvrtKS47oJXPycA2LIPRAwiO0+pF/LU/jQ7h+x5Cok=";
      };

  buildType = "catkin";
  buildInputs = [ catkin eigen-conversions opw-kinematics ];
  checkInputs = [ moveit-resources-fanuc-moveit-config moveit-ros-planning rostest ];
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
