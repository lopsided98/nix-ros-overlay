
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, swri-math-util }:
buildRosPackage {
  pname = "ros-kinetic-swri-console-util";
  version = "2.14.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_console_util/2.14.0-1.tar.gz";
    name = "2.14.0-1.tar.gz";
    sha256 = "2e629dca4d70f47b8bbecef30fbc5cfe49d16404a0bd9c6c5bb206545ff71fe7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
