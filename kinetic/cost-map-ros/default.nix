
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cost-map-msgs, catkin, roslib, grid-map-ros, costmap-2d, ecl-command-line, grid-map-core, libyamlcpp, cost-map-core, ecl-console, opencv3, grid-map-visualization, grid-map-costmap-2d, nav-msgs, ecl-build }:
buildRosPackage {
  pname = "ros-kinetic-cost-map-ros";
  version = "0.3.3";

  src = fetchurl {
    url = "https://github.com/stonier/cost_map-release/archive/release/kinetic/cost_map_ros/0.3.3-0.tar.gz";
    name = "0.3.3-0.tar.gz";
    sha256 = "79e23bddf96227bb9047882efe9ab159aadc3597cdaa61dc93e3143bc5df40e7";
  };

  buildType = "catkin";
  buildInputs = [ boost cost-map-msgs roslib grid-map-ros libyamlcpp ecl-command-line grid-map-core ecl-console cost-map-core costmap-2d opencv3 grid-map-visualization grid-map-costmap-2d nav-msgs ecl-build ];
  propagatedBuildInputs = [ boost cost-map-msgs roslib grid-map-ros libyamlcpp ecl-command-line grid-map-core ecl-console cost-map-core costmap-2d opencv3 grid-map-visualization grid-map-costmap-2d nav-msgs ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cost maps, following the style of ethz-asl's grid_map library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
