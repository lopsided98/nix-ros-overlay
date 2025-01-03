
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-rviz-plugins, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-rviz-plugins";
  version = "0.17.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/noetic/neonavigation_rviz_plugins/0.17.1-1.tar.gz";
    name = "0.17.1-1.tar.gz";
    sha256 = "1f81da84c68ea5ec6cadafa4630cb2277f2fd356c4e43275a41d249f4fd69afd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-cspace-rviz-plugins trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Rviz plugins for neonavigation package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
