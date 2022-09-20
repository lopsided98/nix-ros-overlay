
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, heifu-msgs, nav-msgs, roscpp, rospy }:
buildRosPackage {
  pname = "ros-melodic-heifu-safety";
  version = "0.7.7-r2";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_safety/0.7.7-2.tar.gz";
    name = "0.7.7-2.tar.gz";
    sha256 = "237643936466dc423019b216b87cfb67708a74490a7aeb44f070c2fbacfb4bef";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs heifu-msgs nav-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package enables an allowable safety zone to control the drone with a joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
