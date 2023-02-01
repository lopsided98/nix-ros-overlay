
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, actionlib-tutorials, angles, catkin, coreutils, dynamic-reconfigure, euslisp, geneus, geometry-msgs, jskeus, message-generation, message-runtime, mk, rosbash, rosbuild, roscpp, roslang, rosmsg, rosnode, rospack, rostest, rostopic, sensor-msgs, shape-msgs, std-msgs, std-srvs, tf, tf2-ros, visualization-msgs, xorg }:
buildRosPackage {
  pname = "ros-noetic-roseus";
  version = "1.7.5-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_roseus-release";
        rev = "release/noetic/roseus/1.7.5-2";
        sha256 = "sha256-KKP4LyhjEflR0TpEvt+GIrQ5ZsCY4nxIXR1duskYMLM=";
      };

  buildType = "catkin";
  buildInputs = [ angles catkin coreutils message-generation mk rosbuild rostopic ];
  checkInputs = [ xorg.xorgserver ];
  propagatedBuildInputs = [ actionlib actionlib-msgs actionlib-tutorials dynamic-reconfigure euslisp geneus geometry-msgs jskeus message-runtime rosbash roscpp roslang rosmsg rosnode rospack rostest sensor-msgs shape-msgs std-msgs std-srvs tf tf2-ros visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp client for ROS Robot Operating System.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
