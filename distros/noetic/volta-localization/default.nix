
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-localization }:
buildRosPackage {
  pname = "ros-noetic-volta-localization";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/noetic/volta_localization/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "b8bbe97255fb5b6bca58879cb9edc7921309051792bce9c2dc35127cb6617263";
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
