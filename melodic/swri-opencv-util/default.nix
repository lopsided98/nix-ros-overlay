
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, cv-bridge }:
buildRosPackage {
  pname = "ros-melodic-swri-opencv-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_opencv_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "7ae64cc51d9fd0407bcd5739c8bd38e9ad16845ea5b969ab7b6a6be500eee91d";
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
