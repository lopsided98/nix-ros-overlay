
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-volta-base";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/noetic/volta_base/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "f998233bf5ce9413d482b454c939f5150200d9c18345f2b202645b354fc2bee9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_base package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
