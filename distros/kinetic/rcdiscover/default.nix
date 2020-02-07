
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-kinetic-rcdiscover";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/kinetic/rcdiscover/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "749bb27b2f58cf8a281b590ec23df315090f46fc98764ad2c765bf3b1196b0fa";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of rc_visard sensors via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
