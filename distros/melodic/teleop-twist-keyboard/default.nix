
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-teleop-twist-keyboard";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_twist_keyboard-release/archive/release/melodic/teleop_twist_keyboard/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "bc9aa97ea8811e7dda293d3abeb9824fb0efb18236ef647fdf393cfc05c65181";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic keyboard teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
