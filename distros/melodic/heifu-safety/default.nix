
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, heifu-msgs, nav-msgs, roscpp, rospy }:
buildRosPackage {
  pname = "ros-melodic-heifu-safety";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/amferreiraBEV/heifu-release/archive/release/melodic/heifu_safety/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "b126b1edc6d0a1271151bac28fa6d885fa6f551619477048ab645bc8b5ed7068";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs heifu-msgs nav-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package enables an allowable safety zone to control the drone with a joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
