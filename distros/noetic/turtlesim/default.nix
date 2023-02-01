
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, geometry-msgs, message-generation, message-runtime, qt5, rosconsole, roscpp, roscpp-serialization, roslib, rostime, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-turtlesim";
  version = "0.10.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ros_tutorials-release";
        rev = "release/noetic/turtlesim/0.10.2-1";
        sha256 = "sha256-Ql+/zC+9bCpyo8XVWim+24ysmBK0+Ah8qwmKJHmt4z8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost geometry-msgs message-runtime qt5.qtbase rosconsole roscpp roscpp-serialization roslib rostime std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''turtlesim is a tool made for teaching ROS and ROS packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
