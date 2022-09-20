
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, rosconsole, roscpp-serialization, settlerlib, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-monocam-settler";
  version = "0.10.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/calibration-release/archive/release/melodic/monocam_settler/0.10.14-0.tar.gz";
    name = "0.10.14-0.tar.gz";
    sha256 = "e071a63f48ee1ed211bca1e5bcd85a46afce004dc18ba4226aee484dc7e309c7";
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
