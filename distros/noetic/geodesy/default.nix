
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, geographic-msgs, geometry-msgs, python3Packages, rosunit, sensor-msgs, tf, unique-id, uuid-msgs }:
buildRosPackage {
  pname = "ros-noetic-geodesy";
  version = "0.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/noetic/geodesy/0.5.6-1.tar.gz";
    name = "0.5.6-1.tar.gz";
    sha256 = "69da32daf80a20fd6bdf586d440a31a17afcadd46eb6999cacbcf4ce63bf3542";
  };

  buildType = "catkin";
  buildInputs = [ angles catkin python3Packages.catkin-pkg python3Packages.setuptools ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geographic-msgs geometry-msgs python3Packages.pyproj sensor-msgs tf unique-id uuid-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Python and C++ interfaces for manipulating geodetic coordinates.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
