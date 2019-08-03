
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, catkin, xacro }:
buildRosPackage {
  pname = "ros-melodic-rc-visard-description";
  version = "2.7.0-r1";

  src = fetchurl {
    url = https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/rc_visard_description/2.7.0-1.tar.gz;
    sha256 = "e5e3ac9e99aa611ee63be549bbafc932e15b7497daf5ec4ff05023891bdab04d";
  };

  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization package for rc_visard'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
