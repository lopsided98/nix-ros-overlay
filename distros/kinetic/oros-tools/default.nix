
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, log-server, ros-peerjs, rosbridge-suite }:
buildRosPackage {
  pname = "ros-kinetic-oros-tools";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/easymov/oros_tools-release/archive/release/kinetic/oros_tools/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "aaa2f2bdab754a4324621495f57c36e372b24bebbe1566d65057f3e89ac0d540";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ log-server ros-peerjs rosbridge-suite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Oros Tools is software suite that provide high
    level functions to the web plateform Oros.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
