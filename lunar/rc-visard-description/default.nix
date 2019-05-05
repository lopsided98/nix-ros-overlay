
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin, xacro }:
buildRosPackage {
  pname = "ros-lunar-rc-visard-description";
  version = "2.5.0";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/lunar/rc_visard_description/2.5.0-0.tar.gz;
    sha256 = "1d3b0f6e953eb332f8b5b1a64b15b3a41af334215ec72f486316204b2479e265";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization package for rc_visard'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
