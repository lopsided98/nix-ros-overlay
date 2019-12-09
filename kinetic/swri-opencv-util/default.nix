
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, cv-bridge, catkin }:
buildRosPackage {
  pname = "ros-kinetic-swri-opencv-util";
  version = "2.11.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_opencv_util/2.11.0-1.tar.gz";
    name = "2.11.0-1.tar.gz";
    sha256 = "6ba56566dcc1afe651ee7f3a4cc26f35a9570299d73f45f3a543fe16203fe41c";
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
