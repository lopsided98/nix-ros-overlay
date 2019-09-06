
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, nav-core2, catkin, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-costmap-queue";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/costmap_queue/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "95ebf4af85ebcf125df7bbf21c214d7f8fa35c1014bca7c21595281a84d61793";
  };

  buildType = "catkin";
  buildInputs = [ nav-core2 roscpp ];
  checkInputs = [ rosunit roslint ];
  propagatedBuildInputs = [ nav-core2 roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tool for iterating through the cells of a costmap to find the closest distance to a subset of cells.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
