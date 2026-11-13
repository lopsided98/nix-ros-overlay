
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, cereal, gtest, proxsuite, python3, python3Packages, roboplan-common, roboplan-core, roboplan-example-models }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-oink";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/jazzy/roboplan_oink/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "c9da18992f1891a44793ba5eaf336006a61156c986dc41af36ae9a00ea5230d7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind python3Packages.typing-extensions ];
  checkInputs = [ ament-cmake-gmock gtest roboplan-example-models ];
  propagatedBuildInputs = [ cereal proxsuite roboplan-common roboplan-core ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "OInK - Optimal Inverse Kinematics solver for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
