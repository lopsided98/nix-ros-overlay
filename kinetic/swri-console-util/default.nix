
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-swri-console-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_console_util/2.8.0-0.tar.gz;
    sha256 = "47cb7811d6054bdc47657615f41ca63d85cad90a3f41ac04afe0a138bd0062b2";
  };

  propagatedBuildInputs = [ swri-math-util roscpp ];
  nativeBuildInputs = [ swri-math-util catkin roscpp ];

  meta = {
    description = ''swri_console_util'';
    #license = lib.licenses.BSD;
  };
}
