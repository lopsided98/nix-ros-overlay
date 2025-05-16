
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-msgs, python3Packages, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-influxdb-store";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/influxdb_store/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "b6674088b207555f79201072bcb70cc1dc941fc7ce02545e27739673123963f3";
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
