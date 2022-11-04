
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rviz }:
buildRosPackage {
  pname = "ros-melodic-mrp2-viz";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_desktop-release/archive/release/melodic/mrp2_viz/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "e7509655700e25e8fd79fe9c107314fc7c9a2d390e04011ff810cf0aeab6159c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RViz configurations and launch files for visualization.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
