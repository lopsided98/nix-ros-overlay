
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-swri-console-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_console_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "cbf23d0a6e2d646c5f7db99ce0b60c2e774a0cf9247a879a3cd3a1128b3e65fb";
  };

  buildType = "catkin";
  buildInputs = [ swri-math-util roscpp ];
  propagatedBuildInputs = [ swri-math-util roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
