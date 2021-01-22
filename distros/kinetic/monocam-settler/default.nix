
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, rosconsole, roscpp-serialization, settlerlib, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-monocam-settler";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/kinetic/monocam_settler/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "8353908c19528a762af7f1651f6b7411a6c55ee2fa8ea3a551f49ed97ed22c8a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib actionlib-msgs rosconsole roscpp-serialization settlerlib std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Listens on a ImageFeatures topic, and waits for the data to settle.
     This package is experimental and unstable.
     Expect its APIs to change.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
