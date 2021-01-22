
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gps-common, gpsd-client }:
buildRosPackage {
  pname = "ros-kinetic-gps-umd";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/kinetic/gps_umd/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "2e7641f1f87643df3f56fd359c4ea2dbed49029aaa1ca64089f3de185073d4df";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gps-common gpsd-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
