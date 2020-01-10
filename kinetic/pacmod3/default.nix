
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, pacmod-msgs, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-pacmod3";
  version = "1.2.1";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod3-release/archive/release/kinetic/pacmod3/1.2.1-0.tar.gz";
    name = "1.2.1-0.tar.gz";
    sha256 = "a79b95e60c750525f2418dc31c7d65ceb3ce1471bae80cea437458dad32ec0cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ can-msgs pacmod-msgs roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''AutonomouStuff PACMod v3 Driver Package'';
    license = with lib.licenses; [ mit ];
  };
}
