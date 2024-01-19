
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, pcl-ros, roscpp, tf }:
buildRosPackage {
  pname = "ros-noetic-semantic-point-annotator";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_navigation-release/archive/release/noetic/semantic_point_annotator/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "c87f87e059bee66848d92f71e78ec1dbf239f5ed7a8425b6a8a115848070031b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen pcl-ros roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A node which annotates 3D point cloud data with semantic labels.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
