
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, pythonPackages, rospy }:
buildRosPackage {
  pname = "ros-kinetic-mouse-teleop";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/kinetic/mouse_teleop/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "6b86a8f1377a67cc0c65b18205f8441d9f118b76cab79a403203f60eecbc7365";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs pythonPackages.numpy rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A mouse teleop tool for holonomic mobile robots.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
