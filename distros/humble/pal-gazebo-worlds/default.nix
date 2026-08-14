
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal }:
buildRosPackage {
  pname = "ros-humble-pal-gazebo-worlds";
  version = "4.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_gazebo_worlds-release/archive/release/humble/pal_gazebo_worlds/4.16.0-1.tar.gz";
    name = "4.16.0-1.tar.gz";
    sha256 = "7c0b31053c9fe98b933c656a03ac7850f334f1c96c865e8268bf75e7037ba7f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Simulation worlds for PAL robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
