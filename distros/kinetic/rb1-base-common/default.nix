
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rb1-base-description, rb1-base-pad }:
buildRosPackage {
  pname = "ros-kinetic-rb1-base-common";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/rb1_base_common-release/archive/release/kinetic/rb1_base_common/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "f26852f93bf26b4d270a15d4d2f3b67ac6739792855c1cfc9d93cb81071c4c72";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rb1-base-description rb1-base-pad ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rb1_base_common package. It contains rb1 base common packages used for robot control and for simulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
