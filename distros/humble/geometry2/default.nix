
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tf2, tf2-bullet, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl, tf2-msgs, tf2-py, tf2-ros, tf2-sensor-msgs, tf2-tools }:
buildRosPackage {
  pname = "ros-humble-geometry2";
  version = "0.25.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/humble/geometry2/0.25.9-1.tar.gz";
    name = "0.25.9-1.tar.gz";
    sha256 = "10224eddf977159cbb8a06a5e8cb330ada2c79b2dbe2345d060f046aeb88f404";
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
