
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-kinetic-swri-opencv-util";
  version = "2.14.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_opencv_util/2.14.2-1.tar.gz";
    name = "2.14.2-1.tar.gz";
    sha256 = "7af30fe81e421c9cb7b6344b6b55f66a229dfb2d9a3395be78d055f287e068bd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
