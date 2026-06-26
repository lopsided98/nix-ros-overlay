
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal }:
buildRosPackage {
  pname = "ros-humble-pal-gazebo-worlds";
  version = "4.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_gazebo_worlds-release/archive/release/humble/pal_gazebo_worlds/4.15.1-1.tar.gz";
    name = "4.15.1-1.tar.gz";
    sha256 = "aff68ed007165e6f75fec7423f1bfb2414da2aa9b560e6a051c329e40721b106";
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
