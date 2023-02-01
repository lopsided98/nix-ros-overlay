
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, boost, catkin, message-generation, message-runtime, pythonPackages, roscpp, roslib, rosnode, rospy, rostest, rostopic, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-actionlib";
  version = "1.12.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "actionlib-release";
        rev = "release/melodic/actionlib/1.12.1-1";
        sha256 = "sha256-jsP7NCNDo2VR3KCIwBhWyY5/7o0Xw82P0N2Cy6a8lyc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  checkInputs = [ rosnode ];
  propagatedBuildInputs = [ actionlib-msgs boost message-runtime pythonPackages.wxPython roscpp roslib rospy rostest rostopic std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The actionlib stack provides a standardized interface for
    interfacing with preemptable tasks. Examples of this include moving
    the base to a target location, performing a laser scan and returning
    the resulting point cloud, detecting the handle of a door, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
