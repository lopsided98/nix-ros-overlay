
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-joy-mouse";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/joy_mouse/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "b33520e961db90f10ec739569b9096f0a8cd6e2744ff98ac722b7ef4b0db105f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.pyudev rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The joy_mouse package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
