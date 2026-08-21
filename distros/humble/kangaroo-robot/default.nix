
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kangaroo-bringup, kangaroo-controller-configuration, kangaroo-description }:
buildRosPackage {
  pname = "ros-humble-kangaroo-robot";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kangaroo_robot-release/archive/release/humble/kangaroo_robot/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "6ebd47b7094f1c9c49230c70797e447c408cd0b5432f0eb2316b8bdec28f42fa";
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
