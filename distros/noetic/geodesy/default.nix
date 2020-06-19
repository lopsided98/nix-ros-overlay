
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, geographic-msgs, geometry-msgs, pythonPackages, rosunit, sensor-msgs, tf, unique-id, uuid-msgs }:
buildRosPackage {
  pname = "ros-noetic-geodesy";
  version = "0.5.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/noetic/geodesy/0.5.5-1.tar.gz";
    name = "0.5.5-1.tar.gz";
    sha256 = "b52d720b7b0623c331b34aeaa28e9101b3a28eb9821d943616c5e13c21442ba2";
  };

  buildType = "catkin";
  buildInputs = [ angles pythonPackages.catkin-pkg ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geographic-msgs geometry-msgs pythonPackages.pyproj sensor-msgs tf unique-id uuid-msgs ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Python and C++ interfaces for manipulating geodetic coordinates.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
