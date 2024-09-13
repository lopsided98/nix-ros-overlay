
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-msgs, python3Packages, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-influxdb-store";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/influxdb_store/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "d9bae29b99b5a98f5b7d5fbbdbe72858b9db9000a046a0a2c355f5a480c94dea";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ pr2-msgs python3Packages.influxdb python3Packages.pytz sensor-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "The influxdb_store package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
