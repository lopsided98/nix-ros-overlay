
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, swri-math-util }:
buildRosPackage {
  pname = "ros-noetic-swri-console-util";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_console_util/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "bcadb115a0ca09e60d04f56340225b8ff6751dc05134bb4f21f9c3d18c25e865";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "swri_console_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
