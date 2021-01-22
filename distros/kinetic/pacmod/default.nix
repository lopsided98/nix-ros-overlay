
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, pacmod-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pacmod";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod-release/archive/release/kinetic/pacmod/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "10c2c90882a3d735231d711a024825e8413d8cff60d66c34d0a241389ef36513";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ can-msgs pacmod-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutonomouStuff PACMod driver package'';
    license = with lib.licenses; [ mit ];
  };
}
