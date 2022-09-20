
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, pr2-teleop, safe-teleop-base }:
buildRosPackage {
  pname = "ros-melodic-safe-teleop-pr2";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/shared_autonomy_manipulation-release/archive/release/melodic/safe_teleop_pr2/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "6cdde56548b70fcc58b87f41d60de6b1266c65c9851944e1b913bcadf0fe36cc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joy pr2-teleop safe-teleop-base ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files for running safe_teleop_base on pr2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
