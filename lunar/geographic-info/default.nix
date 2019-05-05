
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geodesy, catkin, geographic-msgs }:
buildRosPackage {
  pname = "ros-lunar-geographic-info";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/geographic_info-release/archive/release/lunar/geographic_info/0.5.2-0.tar.gz;
    sha256 = "b408c2d9fcd3d88c5e9bd89e903fbb1fcc6aa9bc92b441a2b3845bbcc26948c0";
  };

  propagatedBuildInputs = [ geodesy geographic-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Geographic information metapackage.

    Not needed for wet packages, use only to resolve dry stack
    dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
