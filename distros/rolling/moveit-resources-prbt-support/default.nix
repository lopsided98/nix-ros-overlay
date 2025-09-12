
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-prbt-support";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_resources_prbt_support/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "3e95deaab84e6833586c4519f5f46d52a58b54e2f1bd394b31ac282dd652b7a4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Mechanical, kinematic and visual description
  of the Pilz light weight arm PRBT.";
    license = with lib.licenses; [ asl20 ];
  };
}
