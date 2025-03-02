
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-noetic-swri-opencv-util";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_opencv_util/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "8492e56c0663ed76e4280a2d925e7b02430c3b3257d6735f826af4da9d93c66b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "swri_opencv_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
