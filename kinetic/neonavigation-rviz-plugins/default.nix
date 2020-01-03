
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, trajectory-tracker-rviz-plugins }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-rviz-plugins";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_rviz_plugins-release/archive/release/kinetic/neonavigation_rviz_plugins/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "11db8e24bff5a87faddec69f6bb8d6c009abd12ae52b2d0d8c8b1b9297a3b69e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ trajectory-tracker-rviz-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Rviz plugins for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
