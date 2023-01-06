
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gps-common, gpsd-client }:
buildRosPackage {
  pname = "ros-melodic-gps-umd";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/melodic/gps_umd/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "35dec4ec952f063ec3265e29eea27c8814c28a11899371c3816d4912c76741b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gps-common gpsd-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
