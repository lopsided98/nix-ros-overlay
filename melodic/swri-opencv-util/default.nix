
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, cv-bridge, catkin }:
buildRosPackage {
  pname = "ros-melodic-swri-opencv-util";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_opencv_util/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "9acd44f81b3cf018deb726d348c7a22ec31bd5d20540aa7ce4597b46eb968d25";
  };

  buildType = "catkin";
  buildInputs = [ swri-math-util cv-bridge ];
  propagatedBuildInputs = [ swri-math-util cv-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
