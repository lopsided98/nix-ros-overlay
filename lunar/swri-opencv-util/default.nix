
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, cv-bridge }:
buildRosPackage {
  pname = "ros-lunar-swri-opencv-util";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_opencv_util/2.9.0-1.tar.gz;
    sha256 = "ecedf1b19a79a7602f27a85b73286a5d256552eebd9d68a05cb1cd597e7ac3b3";
  };

  buildInputs = [ swri-math-util cv-bridge ];
  propagatedBuildInputs = [ swri-math-util cv-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_opencv_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
