
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-noetic-picovoice-msgs";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "reinzor";
        repo = "picovoice_ros-release";
        rev = "release/noetic/picovoice_msgs/1.0.1-1";
        sha256 = "sha256-BHv+7kGeQRMDE5FA6/WaaOYEz13odWOSHA65R0v4bjI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS interfaces for interacting with Picovoice driver nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
