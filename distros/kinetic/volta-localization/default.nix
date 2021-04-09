
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-localization }:
buildRosPackage {
  pname = "ros-kinetic-volta-localization";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/kinetic/volta_localization/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "a1997e028cdbebf81c33fe3df41fb9ce401b10b6069c34412036d78aded60f6c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-localization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_localization package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
