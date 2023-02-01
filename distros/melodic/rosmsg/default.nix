
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, genmsg, genpy, pythonPackages, rosbag, roslib, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rosmsg";
  version = "1.14.13-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "ros_comm-release";
        rev = "release/melodic/rosmsg/1.14.13-1";
        sha256 = "sha256-xSY21cE/RuCxF+eZiOgVTSPpgUHgIRKGDP9JY82qZl4=";
      };

  buildType = "catkin";
  checkInputs = [ diagnostic-msgs rostest std-msgs std-srvs ];
  propagatedBuildInputs = [ catkin genmsg genpy pythonPackages.rospkg rosbag roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosmsg contains two command-line tools: <tt>rosmsg</tt> and
    <tt>rossrv</tt>. <tt>rosmsg</tt> is a command-line tool for
    displaying information about <a href="http://wiki.ros.org/msg">ROS Message
    types</a>. <tt>rossrv</tt> is a command-line tool for displaying
    information about <a href="http://wiki.ros.org/srv">ROS
    Service types</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
