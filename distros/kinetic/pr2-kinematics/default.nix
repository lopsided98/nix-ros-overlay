
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-arm-kinematics }:
buildRosPackage {
  pname = "ros-kinetic-pr2-kinematics";
  version = "1.0.9";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_kinematics-release/archive/release/kinetic/pr2_kinematics/1.0.9-0.tar.gz";
    name = "1.0.9-0.tar.gz";
    sha256 = "3ec0f330bccd50cf2151890940c17c10d6c6facada7ff6ed1e5eda8b5e2875b6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2-arm-kinematics ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_kinematics package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
