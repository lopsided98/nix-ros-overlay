
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-swri-console-util";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_console_util/2.9.0-1.tar.gz;
    sha256 = "0474550302e6d47a4b254a6d57663a03a4b56d9c6b80b66e58b1737db23934a8";
  };

  buildInputs = [ swri-math-util roscpp ];
  propagatedBuildInputs = [ swri-math-util roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
