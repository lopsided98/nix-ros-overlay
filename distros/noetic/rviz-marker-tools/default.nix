
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, roscpp, rviz, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-rviz-marker-tools";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/rviz_marker_tools/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "3ece254dce1783a6ddb5c2932201746cfca2f4b2814c4ecf6f79f72e91b0ae46";
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
