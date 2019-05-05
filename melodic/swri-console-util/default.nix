
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, swri-math-util, catkin, roscpp }:
buildRosPackage {
  pname = "ros-melodic-swri-console-util";
  version = "2.8.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_console_util/2.8.0-0.tar.gz;
    sha256 = "ff9b6fe8eabe6b0e3ce0e727bfffb3f6ae95694446964db3e5db3f39407568bf";
  };

  buildInputs = [ swri-math-util roscpp ];
  propagatedBuildInputs = [ swri-math-util roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_console_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
