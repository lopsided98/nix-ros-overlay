
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, franka-description, sensor-msgs, catkin, libfranka, roscpp, xacro }:
buildRosPackage {
  pname = "ros-kinetic-franka-visualization";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/kinetic/franka_visualization/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "0dd98f3753c5847a39afabb933e6f5df266719349db7a1cdf67b364d464dc1e2";
  };

  buildType = "catkin";
  buildInputs = [ libfranka sensor-msgs roscpp ];
  propagatedBuildInputs = [ franka-description sensor-msgs libfranka roscpp xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains visualization tools for Franka Emika.'';
    license = with lib.licenses; [ asl20 ];
  };
}
