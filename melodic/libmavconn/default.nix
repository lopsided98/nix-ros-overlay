
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, gtest, catkin, console-bridge, rosunit, mavlink }:
buildRosPackage {
  pname = "ros-melodic-libmavconn";
  version = "0.32.1-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/libmavconn/0.32.1-1.tar.gz";
    name = "0.32.1-1.tar.gz";
    sha256 = "01b98c986060b0b1b69ef5cbd71cc1f44eb0488741108d362eea5ec55c019c83";
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
