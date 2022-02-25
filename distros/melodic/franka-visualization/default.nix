
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, franka-description, libfranka, roscpp, sensor-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-franka-visualization";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_visualization/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "68fe5c756bb5b0f424ea97a4465658e17f43d720925b571300f7da04b83aea71";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ franka-description libfranka roscpp sensor-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains visualization tools for Franka Emika.'';
    license = with lib.licenses; [ asl20 ];
  };
}
