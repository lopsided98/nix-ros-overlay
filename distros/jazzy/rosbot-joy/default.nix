
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, joy, launch, launch-ros, python3Packages, teleop-twist-joy }:
buildRosPackage {
  pname = "ros-jazzy-rosbot-joy";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot_joy/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "f2a24b21350ae2d6ad62c386df2f77609ba203349da818d0f0bf96d9b5899f19";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest python3Packages.pytest python3Packages.pyyaml ];
  propagatedBuildInputs = [ joy launch launch-ros teleop-twist-joy ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The rosbot_joy package to handle joystick inputs for the rosbot drive (via teleop_twist_joy).";
    license = with lib.licenses; [ asl20 ];
  };
}
