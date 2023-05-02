
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-foxy-gps-umd";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/foxy/gps_umd/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "eadf581cc09b88bfb255cf13146113b8ca7bf756cb046df92f5d756c17ebbe14";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gps-msgs gps-tools gpsd-client ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
