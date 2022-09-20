
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, pacmod-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pacmod";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod-release/archive/release/melodic/pacmod/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "e8047a0dfa0788b2a4180a40ce209fd71798d039924e920fc0b4c96e79ba0470";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ can-msgs pacmod-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutonomouStuff PACMod driver package'';
    license = with lib.licenses; [ mit ];
  };
}
