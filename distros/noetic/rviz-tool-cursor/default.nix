
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, pluginlib, qt5, rviz }:
buildRosPackage {
  pname = "ros-noetic-rviz-tool-cursor";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/rviz_tool_cursor/archive/release/noetic/rviz_tool_cursor/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d49f247e02bfbec7d2dfaa8b39d423b918917709d4b27070c460ef79fa73b9b0";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen ];
  propagatedBuildInputs = [ pluginlib qt5.qtbase rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rviz_tool_cursor package'';
    license = with lib.licenses; [ asl20 ];
  };
}
