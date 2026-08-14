
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kangaroo-bringup, kangaroo-controller-configuration, kangaroo-description }:
buildRosPackage {
  pname = "ros-humble-kangaroo-robot";
  version = "2.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kangaroo_robot-release/archive/release/humble/kangaroo_robot/2.14.1-1.tar.gz";
    name = "2.14.1-1.tar.gz";
    sha256 = "bb3bab6369aa367dceb55b2f34c83621243b7284ed9f41f898d0674165530b82";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ kangaroo-bringup kangaroo-controller-configuration kangaroo-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The kangaroo_robot package";
    license = with lib.licenses; [ asl20 ];
  };
}
