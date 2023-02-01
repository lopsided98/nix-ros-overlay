
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, roslint, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosbaglive";
  version = "0.3.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "wu-robotics";
        repo = "wu_ros_tools";
        rev = "release/noetic/rosbaglive/0.3.0-1";
        sha256 = "sha256-QBKk100Ipgq516JeQSSfRvzpVlgVxmIKx5EfDHWXU5M=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rosbag rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plays rosbags as though they were happening NOW.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
