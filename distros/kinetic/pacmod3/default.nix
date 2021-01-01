
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, pacmod-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pacmod3";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod3-release/archive/release/kinetic/pacmod3/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "f330d8b78709411340ed722b039469cef15c707656ffd843c9220e6462216a3f";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ can-msgs pacmod-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutonomouStuff PACMod v3 Driver Package'';
    license = with lib.licenses; [ mit ];
  };
}
