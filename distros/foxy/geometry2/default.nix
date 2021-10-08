
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tf2, tf2-bullet, tf2-eigen, tf2-geometry-msgs, tf2-kdl, tf2-msgs, tf2-py, tf2-ros, tf2-sensor-msgs, tf2-tools }:
buildRosPackage {
  pname = "ros-foxy-geometry2";
  version = "0.13.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/foxy/geometry2/0.13.12-1.tar.gz";
    name = "0.13.12-1.tar.gz";
    sha256 = "a5a386c84429a92b0b825c16a128c8e090ecc086bab5f70858049fc297e04136";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ tf2 tf2-bullet tf2-eigen tf2-geometry-msgs tf2-kdl tf2-msgs tf2-py tf2-ros tf2-sensor-msgs tf2-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A metapackage to bring in the default packages second generation Transform Library in ros, tf2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
