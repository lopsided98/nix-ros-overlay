
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3, python3Packages, roboplan-common, roboplan-core }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-simple-ik";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/lyrical/roboplan_simple_ik/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "dda34b6ee1c432fc24b5ac6498b238f2d63426f27bae3519394cbd2397889ce6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind python3Packages.typing-extensions ];
  propagatedBuildInputs = [ roboplan-common roboplan-core ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Simple inverse kinematics solver for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
