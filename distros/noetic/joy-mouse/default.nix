
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joy-mouse";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/joy_mouse/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "4876131f722fa3039230dc0057afd48333a74da69cca0f665a250f2bc4fc97e8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.pyudev rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The joy_mouse package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
