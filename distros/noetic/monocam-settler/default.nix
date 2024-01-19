
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, rosconsole, roscpp-serialization, settlerlib, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-monocam-settler";
  version = "0.10.15-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/noetic/monocam_settler/0.10.15-1.tar.gz";
    name = "0.10.15-1.tar.gz";
    sha256 = "3366087331b2f73cdec33ae2052a6a903bb1ff7386bb9d6f560cd04f77e6ec97";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib actionlib-msgs rosconsole roscpp-serialization settlerlib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Listens on a ImageFeatures topic, and waits for the data to settle.
     This package is experimental and unstable.
     Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
