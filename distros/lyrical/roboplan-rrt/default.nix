
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, nanoflann-vendor, python3, python3Packages, roboplan-common, roboplan-core, roboplan-example-models }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-rrt";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/lyrical/roboplan_rrt/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "2c2c87ad0eaef931103b0f9be17ea60b8b2b5277ddf3ab65d8eb728630cf2784";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind python3Packages.typing-extensions ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest roboplan-example-models ];
  propagatedBuildInputs = [ nanoflann-vendor roboplan-common roboplan-core ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Rapidly-Exploring Random Tree (RRT) implementation for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
