
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, unique-id, tf, catkin, pythonPackages, rosunit, geographic-msgs, angles, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-geodesy";
  version = "0.5.3";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/melodic/geodesy/0.5.3-0.tar.gz";
    name = "0.5.3-0.tar.gz";
    sha256 = "58e20388e22a583385b39acf097e80a508617623d484f29a30f31ee96558f58b";
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
