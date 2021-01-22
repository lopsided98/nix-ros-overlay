
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gps-common, gpsd-client }:
buildRosPackage {
  pname = "ros-noetic-gps-umd";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/noetic/gps_umd/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "ca6c1d82ea1f9ac94136000f14477f0e71c6db70e568ba42113d6e89255a30aa";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gps-common gpsd-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
