
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ncurses, rosbag, roscpp, rqt-bag, rviz, std-msgs, towr, visualization-msgs, xpp-hyq, xpp-msgs, xpp-states, xterm }:
buildRosPackage {
  pname = "ros-melodic-towr-ros";
  version = "1.4.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ethz-adrl";
        repo = "towr-release";
        rev = "release/melodic/towr_ros/1.4.1-0";
        sha256 = "sha256-Iv9lpP9rDSkWURdw+VMSTj0uCRY3JD3LlgpA9Pp5YaY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ncurses rosbag roscpp rqt-bag rviz std-msgs towr visualization-msgs xpp-hyq xpp-msgs xpp-states xterm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS dependent wrapper for
    <a href="http://wiki.ros.org/towr">towr</a>.
    Adds a keyboard user interface to set different goal states, motions
    and robots and visualizes the produced motions plan in rviz using
    <a href="http://wiki.ros.org/xpp">xpp</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
