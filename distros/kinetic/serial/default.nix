
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-kinetic-serial";
  version = "1.2.1";

  src = fetchurl {
    url = "https://github.com/wjwwood/serial-release/archive/release/kinetic/serial/1.2.1-0.tar.gz";
    name = "1.2.1-0.tar.gz";
    sha256 = "bd106e47ede64b3e9309ed796b8a1f9dba4b8f2cb24e70dbc9c3032e4c9909a0";
  };

  buildType = "catkin";
  checkInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Serial is a cross-platform, simple to use library for using serial ports on computers.  This library provides a C++, object oriented interface for interacting with RS-232 like devices on Linux and Windows.'';
    license = with lib.licenses; [ mit ];
  };
}
