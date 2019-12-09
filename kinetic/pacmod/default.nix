
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, catkin, roslint, roscpp, can-msgs, pacmod-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pacmod";
  version = "2.0.2";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod-release/archive/release/kinetic/pacmod/2.0.2-0.tar.gz";
    name = "2.0.2-0.tar.gz";
    sha256 = "8c6f53699c4548da8a76cde1e431bb4f64c95d82b2201453160568b0780c6e14";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs roslint roscpp can-msgs pacmod-msgs ];
  propagatedBuildInputs = [ can-msgs std-msgs pacmod-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutonomouStuff PACMod driver package'';
    license = with lib.licenses; [ mit ];
  };
}
