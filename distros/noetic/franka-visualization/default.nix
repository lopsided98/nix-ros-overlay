
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-description, libfranka, roscpp, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-franka-visualization";
  version = "0.8.2-r2";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_visualization/0.8.2-2.tar.gz";
    name = "0.8.2-2.tar.gz";
    sha256 = "65f02970bf80cf6e8572b54f91bd121a56de4e4b6159d3aa13dffd1542e0f3f3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ franka-description libfranka roscpp sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains visualization tools for Franka Emika.'';
    license = with lib.licenses; [ asl20 ];
  };
}
