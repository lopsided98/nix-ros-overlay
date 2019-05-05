
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-lunar-teleop-twist-keyboard";
  version = "0.6.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/teleop_twist_keyboard-release/archive/release/lunar/teleop_twist_keyboard/0.6.2-0.tar.gz;
    sha256 = "01ddced044a47af6a063fb0690e3fcc3c64459206f03aab8d6032d667de7c3d7";
  };

  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic keyboard teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
