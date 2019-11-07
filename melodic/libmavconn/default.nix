
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, gtest, catkin, console-bridge, rosunit, mavlink }:
buildRosPackage {
  pname = "ros-melodic-libmavconn";
  version = "0.33.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/libmavconn/0.33.0-1.tar.gz";
    name = "0.33.0-1.tar.gz";
    sha256 = "a799c13f4fdc90ee18cefa60c4e6da825201b958ff66311a2e0c525792ba8135";
  };

  buildType = "catkin";
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
