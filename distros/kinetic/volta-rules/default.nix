
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-volta-rules";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/kinetic/volta_rules/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "db65eff3b16844e4dac2ccad3341f858fbc47e05b6b7127ddec572de363aee85";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_rules package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
