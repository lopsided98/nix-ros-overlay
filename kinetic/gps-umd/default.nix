
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gps-common, catkin, gpsd-client }:
buildRosPackage {
  pname = "ros-kinetic-gps-umd";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/kinetic/gps_umd/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "ce32a082ced7efeb32c4386533485d3eb757de247039b11a506e17dc8decc474";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gps-common gpsd-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
