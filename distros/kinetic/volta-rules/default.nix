
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-volta-rules";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/kinetic/volta_rules/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ba655be5a1974d5bfad6c9a57b23e49ec65e52f5b656a8c76f16ae8534b5891d";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_rules package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
