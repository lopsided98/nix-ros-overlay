
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-drone-msgs-adapter, tobas-kdl-conversions, tobas-msgs-adapter, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-manipulation";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_manipulation/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "8073134883584c355c93ee0274bce86b7575c2f7926a124e94bb68568855661e";
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
