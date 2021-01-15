
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-geotiff, hector-geotiff-plugins, hector-trajectory-server }:
buildRosPackage {
  pname = "ros-noetic-hector-geotiff-launch";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_geotiff_launch/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "17dcb215c3567404abd12578356fd437db8b7b00ace1bc3e5a7479b4c4a901f3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-geotiff hector-geotiff-plugins hector-trajectory-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains launch files for the hector_geotiff mapper.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
