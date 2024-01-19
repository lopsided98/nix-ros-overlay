
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, interactive-markers, roslint, rospy, rviz, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-easy-markers";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/noetic/easy_markers/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "6706cf26cb96afa9ee2aea827e3be776af427dd591d6cdfabbcc83f14cb6bc20";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs interactive-markers rospy rviz std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python library to assist in publishing markers easily'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
