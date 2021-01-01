
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-dashing-gps-umd";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/dashing/gps_umd/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "980a405d013e9dc2d46d76a68c0c9a12f832bbce7aa402437ea67e4b71a447cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gps-msgs gps-tools gpsd-client ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
