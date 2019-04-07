
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-id, sensor-msgs, catkin, pythonPackages, uuid-msgs, geographic-msgs, angles, tf, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-geodesy";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/geographic_info-release/archive/release/kinetic/geodesy/0.5.2-0.tar.gz;
    sha256 = "c298212d2a77911d60cedfde713372bad057fbcb8307aa5f29eb976e3166ed9f";
  };

  buildInputs = [ uuid-msgs geographic-msgs unique-id angles pythonPackages.catkin-pkg tf sensor-msgs geometry-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ uuid-msgs geographic-msgs unique-id tf sensor-msgs pythonPackages.pyproj geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python and C++ interfaces for manipulating geodetic coordinates.'';
    #license = lib.licenses.BSD;
  };
}
