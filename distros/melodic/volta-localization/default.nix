
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-localization }:
buildRosPackage {
  pname = "ros-melodic-volta-localization";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_localization/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "8b63b7df42d7f42a6d313fabb4b7d48babcde31c73cc33600b7c1ff99a7a2db2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ robot-localization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_localization package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
