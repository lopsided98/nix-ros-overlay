
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, roscpp }:
buildRosPackage {
  pname = "ros-lunar-swri-console-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/lunar/swri_console_util/2.8.0-0.tar.gz;
    sha256 = "e819135bf901c9c1ea448dfeebc220ad2142b38c6c015e47400fbb2167ade79b";
  };

  buildInputs = [ swri-math-util roscpp ];
  propagatedBuildInputs = [ swri-math-util roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_console_util'';
    #license = lib.licenses.BSD;
  };
}
