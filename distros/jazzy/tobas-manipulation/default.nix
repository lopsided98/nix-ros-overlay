
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-kdl-conversions, tobas-msgs-adapter, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-manipulation";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_manipulation/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "f25c7b8f2093dcddff1628294704f6d758fd90f3bf07f417b456d4bcd25b44b1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-drone-msgs-adapter tobas-kdl-conversions tobas-msgs-adapter tobas-node tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 joint position, velocity, and effort controllers for robotic manipulators.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
