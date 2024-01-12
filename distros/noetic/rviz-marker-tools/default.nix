
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, rviz, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rviz-marker-tools";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/rviz_marker_tools/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "2a2d5caa9fb46b6492cde425370e98b4b00bf2df463ea64a7cb964c5490e740e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs roscpp rviz tf2-eigen visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools for marker creation / handling'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
