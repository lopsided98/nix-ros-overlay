
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dolly-follow, dolly-gazebo, dolly-ignition }:
buildRosPackage {
  pname = "ros-jazzy-dolly";
  version = "0.4.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/jazzy/dolly/0.4.0-6.tar.gz";
    name = "0.4.0-6.tar.gz";
    sha256 = "009dc42384cf9a7b65b2c7a82fc62edffeab493ad17d4edd8d491a255a3fbd3a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dolly-follow dolly-gazebo dolly-ignition ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta-package for Dolly, the robot sheep.";
    license = with lib.licenses; [ asl20 ];
  };
}
