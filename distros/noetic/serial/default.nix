
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-noetic-serial";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/wjwwood/serial-release/archive/release/noetic/serial/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "9dded001cf674418e67b3c69ad0df7105ca299f5b368a9e8ec6894c7324a5ec2";
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
