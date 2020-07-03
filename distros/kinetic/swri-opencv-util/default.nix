
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-kinetic-swri-opencv-util";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_opencv_util/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "d1a2e6aa769d9a9511d259f28b8c61abfe31623b2e814477fcad64cfbaf83dff";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
