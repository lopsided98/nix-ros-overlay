
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-id, sensor-msgs, catkin, pythonPackages, uuid-msgs, geographic-msgs, angles, tf, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-geodesy";
  version = "0.5.3";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/geographic_info-release/archive/release/melodic/geodesy/0.5.3-0.tar.gz;
    sha256 = "58e20388e22a583385b39acf097e80a508617623d484f29a30f31ee96558f58b";
  };

  buildInputs = [ unique-id sensor-msgs uuid-msgs geographic-msgs angles pythonPackages.catkin-pkg tf geometry-msgs ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ unique-id tf sensor-msgs uuid-msgs geographic-msgs pythonPackages.pyproj geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python and C++ interfaces for manipulating geodetic coordinates.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
