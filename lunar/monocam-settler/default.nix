
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, actionlib-msgs, catkin, settlerlib, actionlib, roscpp-serialization, std-msgs }:
buildRosPackage {
  pname = "ros-lunar-monocam-settler";
  version = "0.10.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/calibration-release/archive/release/lunar/monocam_settler/0.10.14-0.tar.gz;
    sha256 = "810d6eca40bde653377fa9f82c2230e234eaffb80960d370cb078ab687e4ef49";
  };

  buildInputs = [ settlerlib actionlib rosconsole actionlib-msgs roscpp-serialization std-msgs ];
  propagatedBuildInputs = [ settlerlib actionlib rosconsole actionlib-msgs roscpp-serialization std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Listens on a ImageFeatures topic, and waits for the data to settle.
     This package is experimental and unstable.
     Expect its APIs to change.'';
    #license = lib.licenses.BSD;
  };
}
