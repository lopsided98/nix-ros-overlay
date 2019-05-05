
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-lunar-neonavigation-rviz-plugins";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/lunar/neonavigation_rviz_plugins/0.3.0-0.tar.gz;
    sha256 = "c0636adcab3f6c458e9803092ce6d04f209ab14ac1b3ff6cdde8c1bd67ad92ae";
  };

  propagatedBuildInputs = [ trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
