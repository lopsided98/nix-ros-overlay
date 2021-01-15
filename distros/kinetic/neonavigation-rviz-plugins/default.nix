
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-rviz-plugins";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/kinetic/neonavigation_rviz_plugins/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "ee035f4cd5028e338ea050d25fe97c5c1b65206e0b284e767adfbbfe2b14b581";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
