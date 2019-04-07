
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, cv-bridge }:
buildRosPackage {
  pname = "ros-kinetic-swri-opencv-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_opencv_util/2.8.0-0.tar.gz;
    sha256 = "7f965ec46119e60dc435e9508b1aa1ce74a1dac27f0dbe92dba57dc77ab57d65";
  };

  buildInputs = [ swri-math-util cv-bridge ];
  propagatedBuildInputs = [ swri-math-util cv-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    #license = lib.licenses.BSD;
  };
}
