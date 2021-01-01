
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-localization }:
buildRosPackage {
  pname = "ros-kinetic-volta-localization";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/kinetic/volta_localization/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "a466544d0b53a06d65192253298316e0194323ee5f2a7a72d55315d05bebbcd0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-localization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_localization package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
