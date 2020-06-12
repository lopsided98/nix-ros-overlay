
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-foxy-gps-umd";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/foxy/gps_umd/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "c519ef494fee0eb8602f878372c24d5331452bbbe70eaf6a8878cc6948109d6f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gps-msgs gps-tools gpsd-client ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
