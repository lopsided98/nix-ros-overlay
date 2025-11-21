
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal }:
buildRosPackage {
  pname = "ros-humble-pal-gazebo-worlds";
  version = "4.10.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_gazebo_worlds-ros2-release/archive/release/humble/pal_gazebo_worlds/4.10.0-1.tar.gz";
    name = "4.10.0-1.tar.gz";
    sha256 = "f1c8099f0d458527651d274b44fd29859134a6d397f3908fe2cbf1343dca1aba";
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
