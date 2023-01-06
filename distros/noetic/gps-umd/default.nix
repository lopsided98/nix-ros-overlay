
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gps-common, gpsd-client }:
buildRosPackage {
  pname = "ros-noetic-gps-umd";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/noetic/gps_umd/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "d558c65ce8b83fb5235b7165b3662eefba2126b23685b623b087d44a4a00fed1";
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
