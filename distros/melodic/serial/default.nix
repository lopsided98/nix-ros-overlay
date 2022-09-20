
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-melodic-serial";
  version = "1.2.1";

  src = fetchurl {
    url = "https://github.com/wjwwood/serial-release/archive/release/melodic/serial/1.2.1-0.tar.gz";
    name = "1.2.1-0.tar.gz";
    sha256 = "2509a47393feef491a0876997beb0fd9af9ecc4e6ed6ceb533f3b8840471f1c2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Serial is a cross-platform, simple to use library for using serial ports on computers.  This library provides a C++, object oriented interface for interacting with RS-232 like devices on Linux and Windows.'';
    license = with lib.licenses; [ mit ];
  };
}
