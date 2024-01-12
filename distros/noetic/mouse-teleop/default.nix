
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-mouse-teleop";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/noetic/mouse_teleop/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "d21ba18475562e6e6beedaef8265fdbcd6e1d8130f6b8e6169aa923e03bbab30";
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
