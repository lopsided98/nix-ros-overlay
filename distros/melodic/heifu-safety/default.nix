
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, heifu-msgs, nav-msgs, roscpp, rospy }:
buildRosPackage {
  pname = "ros-melodic-heifu-safety";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/heifu_safety/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "3748d7308801ab5c340566765ffe0e87c575419f33ede9bb3b783efea37cc92b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs heifu-msgs nav-msgs roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package enables an allowable safety zone to control the drone with a joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
