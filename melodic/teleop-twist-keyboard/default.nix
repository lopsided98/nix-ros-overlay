
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-teleop-twist-keyboard";
  version = "0.6.2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_twist_keyboard-release/archive/release/melodic/teleop_twist_keyboard/0.6.2-0.tar.gz";
    name = "0.6.2-0.tar.gz";
    sha256 = "4e15fb28b816cb89a86f7318b75a23d933e6f732ff0072604a967f10681e9203";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic keyboard teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
