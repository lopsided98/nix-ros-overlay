
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2, catkin, urdf, roscpp }:
buildRosPackage {
  pname = "ros-lunar-urdf-geometry-parser";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/urdf_geometry_parser-release/archive/release/lunar/urdf_geometry_parser/0.0.3-0.tar.gz;
    sha256 = "337567663e097c1e382bfcc6f243936c995085b10e7d51eb970f2168ad0af4a2";
  };

  buildInputs = [ tf2 roscpp urdf ];
  propagatedBuildInputs = [ tf2 roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extract geometry value of a vehicle from urdf'';
    #license = lib.licenses.BSD;
  };
}
