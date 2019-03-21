
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, summit-xl-description, summit-xl-navigation, summit-xl-localization, summit-xl-pad }:
buildRosPackage {
  pname = "ros-kinetic-summit-xl-common";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/summit_xl_common-release/archive/release/kinetic/summit_xl_common/1.1.2-0.tar.gz;
    sha256 = "bc9c7652afaddd17c7238d53bb2730cb8dc146d0ea7371079e69b382632ec5b9";
  };

  propagatedBuildInputs = [ summit-xl-navigation summit-xl-localization summit-xl-description summit-xl-pad ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the Summit XL and Summit XL HL, platform messages and other files for simulation.'';
    #license = lib.licenses.BSD;
  };
}
