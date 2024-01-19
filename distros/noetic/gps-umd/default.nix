
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gps-common, gpsd-client }:
buildRosPackage {
  pname = "ros-noetic-gps-umd";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/noetic/gps_umd/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "d0c9758976461cdca7ec9d88d7bf081507c639e2a4d6710872649aa017cd89e1";
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
