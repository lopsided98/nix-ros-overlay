
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-noetic-swri-opencv-util";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_opencv_util/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "d358f7766086ac67f4611ca0f9f4fc2083d467c9afd64a707e804c8b57c7c23c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
