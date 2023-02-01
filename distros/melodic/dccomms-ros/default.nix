
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, dccomms-ros-msgs, git, message-generation, message-runtime, roscpp, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-dccomms-ros";
  version = "0.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "dcentelles";
        repo = "dccomms_ros_pkgs-release";
        rev = "release/melodic/dccomms_ros/0.0.3-1";
        sha256 = "sha256-13ZyB5dpDO4l9llFApKe3yKxIv4yYef6XI7QNb2dZWc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs dccomms-ros-msgs git message-runtime roscpp rospy std-msgs tf ];
  nativeBuildInputs = [ catkin git ];

  meta = {
    description = ''The dccomms_ros package'';
    license = with lib.licenses; [ "TODO-CATKIN-PACKAGE-LICENSE" ];
  };
}
