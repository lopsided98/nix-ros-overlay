
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-description, libfranka, roscpp, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-franka-visualization";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_visualization/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "228790af3299b7d41cdf6d22098e29baccdd8615157ba36a8b223e0d99b96bf8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ franka-description libfranka roscpp sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains visualization tools for Franka Emika.'';
    license = with lib.licenses; [ asl20 ];
  };
}
