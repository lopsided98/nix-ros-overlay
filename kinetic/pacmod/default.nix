
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, can-msgs, catkin, pacmod-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pacmod";
  version = "2.0.2";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod-release/archive/release/kinetic/pacmod/2.0.2-0.tar.gz";
    name = "2.0.2-0.tar.gz";
    sha256 = "8c6f53699c4548da8a76cde1e431bb4f64c95d82b2201453160568b0780c6e14";
  };

  buildType = "catkin";
  buildInputs = [ roslint can-msgs pacmod-msgs std-msgs roscpp ];
  propagatedBuildInputs = [ std-msgs can-msgs roscpp pacmod-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutonomouStuff PACMod driver package'';
    license = with lib.licenses; [ mit ];
  };
}
