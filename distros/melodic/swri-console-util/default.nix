
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, swri-math-util }:
buildRosPackage {
  pname = "ros-melodic-swri-console-util";
  version = "2.15.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_console_util/2.15.2-1.tar.gz";
    name = "2.15.2-1.tar.gz";
    sha256 = "e2892f1a73322c575fcc2f54bbfa875c94859f9b052e20e56c9c6bac6800bf13";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roscpp swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
