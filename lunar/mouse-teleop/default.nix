
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-lunar-mouse-teleop";
  version = "0.2.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/teleop_tools-release/archive/release/lunar/mouse_teleop/0.2.6-0.tar.gz;
    sha256 = "dad77acbd1f9c6b05d2f6c300bc62d952d272f7224137da359b18fee70cfaa98";
  };

  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A mouse teleop tool for holonomic mobile robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
