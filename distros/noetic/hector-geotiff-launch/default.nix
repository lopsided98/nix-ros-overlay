
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-geotiff, hector-geotiff-plugins, hector-trajectory-server }:
buildRosPackage {
  pname = "ros-noetic-hector-geotiff-launch";
  version = "0.5.2-r4";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_geotiff_launch/0.5.2-4.tar.gz";
    name = "0.5.2-4.tar.gz";
    sha256 = "3e8f605d905a45743d07dfc38895f2e5e8163be71dfb3856ac4332c581cf1821";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-geotiff hector-geotiff-plugins hector-trajectory-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains launch files for the hector_geotiff mapper.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
