
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, qt5, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-tool-path-display";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/rviz_tool_path_display-release/archive/release/noetic/rviz_tool_path_display/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "2fe0988163c991188af9981fc516d622931be45504a7029770d579e7efec7aab";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rviz_tool_path_display package'';
    license = with lib.licenses; [ asl20 ];
  };
}
