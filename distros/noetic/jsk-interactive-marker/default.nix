
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cmake-modules, dynamic-reconfigure, dynamic-tf-publisher, eigen-conversions, geometry-msgs, interactive-markers, jsk-footstep-msgs, jsk-recognition-msgs, jsk-recognition-utils, jsk-rviz-plugins, jsk-topic-tools, libyamlcpp, message-filters, message-generation, message-runtime, mk, moveit-msgs, rosbuild, roscpp, roslib, rviz, sensor-msgs, tf, tf-conversions, tinyxml, urdf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-jsk-interactive-marker";
  version = "2.1.8-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_visualization-release";
        rev = "release/noetic/jsk_interactive_marker/2.1.8-1";
        sha256 = "sha256-yJkdd5hoJTVP8AyHwwSO5PEOH8BXnROUR2F1Q6dPfJ8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules message-generation mk rosbuild ];
  propagatedBuildInputs = [ actionlib dynamic-reconfigure dynamic-tf-publisher eigen-conversions geometry-msgs interactive-markers jsk-footstep-msgs jsk-recognition-msgs jsk-recognition-utils jsk-rviz-plugins jsk-topic-tools libyamlcpp message-filters message-runtime moveit-msgs roscpp roslib rviz sensor-msgs tf tf-conversions tinyxml urdf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''jsk interactive markers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
