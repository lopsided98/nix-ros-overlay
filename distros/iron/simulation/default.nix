
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-base, ros-ign-bridge, ros-ign-gazebo, ros-ign-image, ros-ign-interfaces }:
buildRosPackage {
  pname = "ros-iron-simulation";
  version = "0.10.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/iron/simulation/0.10.0-3.tar.gz";
    name = "0.10.0-3.tar.gz";
    sha256 = "f11350ed8831820aee9472ff0242c9815f2ef54562352a07f017c6e06c6de7f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-base ros-ign-bridge ros-ign-gazebo ros-ign-image ros-ign-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A package which extends 'ros_base' and includes simulation packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
