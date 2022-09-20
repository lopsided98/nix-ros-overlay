
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-melodic-neonavigation-rviz-plugins";
  version = "0.11.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/melodic/neonavigation_rviz_plugins/0.11.6-1.tar.gz";
    name = "0.11.6-1.tar.gz";
    sha256 = "79c1f10964f90287b135a6ffaf4b990828625d5f68ed97e4d8ec7773b2c8832e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
