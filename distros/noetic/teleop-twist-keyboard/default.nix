
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-teleop-twist-keyboard";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_twist_keyboard-release/archive/release/noetic/teleop_twist_keyboard/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "f88b1bfe22c7df202673dab7e7a4d95e3708a23b1fd2b9e6e810cb12e75fac00";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic keyboard teleop for twist robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
