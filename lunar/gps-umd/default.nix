
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gps-common, catkin, gpsd-client }:
buildRosPackage {
  pname = "ros-lunar-gps-umd";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/lunar/gps_umd/0.2.0-0.tar.gz;
    sha256 = "2070ad10e2991948fdacf2dec2789daa84194142e680bc6e3949b86a2bee8b6b";
  };

  propagatedBuildInputs = [ gps-common gpsd-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
