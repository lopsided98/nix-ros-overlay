
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-msgs, python3Packages, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-influxdb-store";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/influxdb_store/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "664dab8924272b7c9021d45253bbb2361d319b4a0fef25057413babd06751967";
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
