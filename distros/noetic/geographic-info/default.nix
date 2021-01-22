
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geodesy, geographic-msgs }:
buildRosPackage {
  pname = "ros-noetic-geographic-info";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/noetic/geographic_info/0.5.5-1.tar.gz";
    name = "0.5.5-1.tar.gz";
    sha256 = "a19fe073d334e4b20d67d705e9af80c7899de201888a1814b093f02158220cb8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geodesy geographic-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Geographic information metapackage.

    Not needed for wet packages, use only to resolve dry stack
    dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
