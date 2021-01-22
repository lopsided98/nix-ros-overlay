
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpp-common, roscpp-serialization, roscpp-traits, rostime }:
buildRosPackage {
  pname = "ros-noetic-roscpp-core";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/roscpp_core-release/archive/release/noetic/roscpp_core/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "d40d836804305c723cddab20b673c74bcdae047064a5f342b266b162830474e7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cpp-common roscpp-serialization roscpp-traits rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Underlying data libraries for roscpp messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
