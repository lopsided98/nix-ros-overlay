
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, unique-id, tf, catkin, pythonPackages, rosunit, geographic-msgs, angles, uuid-msgs }:
buildRosPackage {
  pname = "ros-kinetic-geodesy";
  version = "0.5.2";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/kinetic/geodesy/0.5.2-0.tar.gz";
    name = "0.5.2-0.tar.gz";
    sha256 = "c298212d2a77911d60cedfde713372bad057fbcb8307aa5f29eb976e3166ed9f";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs unique-id tf geographic-msgs pythonPackages.catkin-pkg angles uuid-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs unique-id tf geographic-msgs pythonPackages.pyproj uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python and C++ interfaces for manipulating geodetic coordinates.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
