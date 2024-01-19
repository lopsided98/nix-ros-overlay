
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, swri-math-util }:
buildRosPackage {
  pname = "ros-noetic-swri-opencv-util";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_opencv_util/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "88191075c951b11757814bb2515d9ea440c0635ce26ef71510951a03ecb17bdb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost cv-bridge swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
