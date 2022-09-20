
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-mouse-teleop";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/noetic/mouse_teleop/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "503f0f74b7858db4eca3c48c5e8fa80d312964e5922bb40ae29d73af766e2c3f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs python3Packages.numpy python3Packages.tkinter rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A mouse teleop tool for holonomic mobile robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
