
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, gtest, catkin, console-bridge, rosunit, mavlink }:
buildRosPackage {
  pname = "ros-lunar-libmavconn";
  version = "0.29.2";

  src = fetchurl {
    url = https://github.com/mavlink/mavros-release/archive/release/lunar/libmavconn/0.29.2-0.tar.gz;
    sha256 = "e0986212cb72b388c56887abb84a05a04419b413cd117fe44c68856e60489e69";
  };

  buildInputs = [ console-bridge boost mavlink ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ console-bridge boost mavlink ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MAVLink communication library.
    This library provide unified connection handling classes
    and URL to connection object mapper.

    This library can be used in standalone programs.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
