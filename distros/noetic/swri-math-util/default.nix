
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-swri-math-util";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_math_util/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "6b8777a02c30e004dce5320e018ca3820315c96876707d83c3eb51ebbd672f5f";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ boost roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_math_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
