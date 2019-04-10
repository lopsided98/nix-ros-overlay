
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-id, sensor-msgs, catkin, pythonPackages, uuid-msgs, geographic-msgs, angles, tf, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-geodesy";
  version = "0.5.2";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/geographic_info-release/archive/release/lunar/geodesy/0.5.2-0.tar.gz;
    sha256 = "8336ff81fc496e1cc2e3c1cd570c210f3e96fb1d6f093cffa5f6d9ddb47c32d0";
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
