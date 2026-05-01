
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, boost, gtest, lanelet2-core, lanelet2-io, lanelet2-matching, lanelet2-projection, lanelet2-routing, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-lyrical-lanelet2-python";
  version = "1.2.1-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/lyrical/lanelet2_python/1.2.1-8.tar.gz";
    name = "1.2.1-8.tar.gz";
    sha256 = "2c9a77609c017026390eea6cccb6687d47975ba7ab29d04730c5e074eb2cc763";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost lanelet2-core lanelet2-io lanelet2-matching lanelet2-projection lanelet2-routing lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = "Python bindings for lanelet2";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
