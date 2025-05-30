
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tf2, tf2-bullet, tf2-eigen, tf2-eigen-kdl, tf2-geometry-msgs, tf2-kdl, tf2-msgs, tf2-py, tf2-ros, tf2-sensor-msgs, tf2-tools }:
buildRosPackage {
  pname = "ros-kilted-geometry2";
  version = "0.41.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/kilted/geometry2/0.41.0-1.tar.gz";
    name = "0.41.0-1.tar.gz";
    sha256 = "82b859145e2d627220d98972c718fd45584ee2a9fb9e4f69e39e0a56e08b9463";
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
