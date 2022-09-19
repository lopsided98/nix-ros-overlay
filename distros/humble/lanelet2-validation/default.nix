
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest, lanelet2-core, lanelet2-io, lanelet2-maps, lanelet2-projection, lanelet2-routing, lanelet2-traffic-rules, mrt-cmake-modules }:
buildRosPackage {
  pname = "ros-humble-lanelet2-validation";
  version = "1.1.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lanelet2-release/archive/release/humble/lanelet2_validation/1.1.1-4.tar.gz";
    name = "1.1.1-4.tar.gz";
    sha256 = "9dcabc5eca74709f6d0b2fa937bb43594521e1fd53e0f2f6fd1b1f8131f17a44";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ gtest lanelet2-maps ];
  propagatedBuildInputs = [ lanelet2-core lanelet2-io lanelet2-projection lanelet2-routing lanelet2-traffic-rules mrt-cmake-modules ];
  nativeBuildInputs = [ ament-cmake-core mrt-cmake-modules ];

  meta = {
    description = ''Package for sanitizing lanelet maps'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
