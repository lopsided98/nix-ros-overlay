
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, swri-math-util }:
buildRosPackage {
  pname = "ros-kinetic-swri-console-util";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_console_util/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "9628e6e678a3efb3d8784ed0a1b933fa64c45ceb1f440cbf0a166ce792413fe6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp swri-math-util ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
