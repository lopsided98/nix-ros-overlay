
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace-rviz-plugins, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-melodic-neonavigation-rviz-plugins";
  version = "0.11.7-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/melodic/neonavigation_rviz_plugins/0.11.7-1.tar.gz";
    name = "0.11.7-1.tar.gz";
    sha256 = "023740620e951a376a54bced6fdd64b66e11c67e0078ef6e28cc44ea54fff2a0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-cspace-rviz-plugins trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
