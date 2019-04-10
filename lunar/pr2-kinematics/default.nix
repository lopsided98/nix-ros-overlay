
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-arm-kinematics }:
buildRosPackage {
  pname = "ros-lunar-pr2-kinematics";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/lunar/pr2_kinematics/1.0.10-0.tar.gz;
    sha256 = "df88b11e663882ec917d529b0eb347f0c9c49fadee16d7ca5379fe5c15836373";
  };

  propagatedBuildInputs = [ pr2-arm-kinematics ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_kinematics package'';
    #license = lib.licenses.BSD;
  };
}
