
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, pacmod-msgs, roscpp, roslint, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pacmod3";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod3-release/archive/release/melodic/pacmod3/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "5a48a3e0b845272836125c8065b81e777bc10bf088dbd2013431168ceda276be";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ can-msgs pacmod-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutonomouStuff PACMod v3 Driver Package'';
    license = with lib.licenses; [ mit ];
  };
}
