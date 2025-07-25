
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tf2, tf2-bullet, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl, tf2-msgs, tf2-py, tf2-ros, tf2-sensor-msgs, tf2-tools }:
buildRosPackage {
  pname = "ros-rolling-geometry2";
  version = "0.43.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/geometry2/0.43.1-1.tar.gz";
    name = "0.43.1-1.tar.gz";
    sha256 = "190fe617945579bf2a899a0196969956bf2920421dc0e7583af58c522c17adf7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tf2 tf2-bullet tf2-eigen tf2-eigen-kdl tf2-geometry-msgs tf2-kdl tf2-msgs tf2-py tf2-ros tf2-sensor-msgs tf2-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A metapackage to bring in the default packages second generation Transform Library in ros, tf2.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
