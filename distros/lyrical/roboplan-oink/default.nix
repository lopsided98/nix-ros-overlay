
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-python, gtest, python3Packages, roboplan, roboplan-example-models }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-oink";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/lyrical/roboplan_oink/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "82703bf9f3048f5e1073250f48128733305a450d469786b15ca03715359d29c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-gmock gtest roboplan-example-models ];
  propagatedBuildInputs = [ python3Packages.nanobind roboplan ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "OInK - Optimal Inverse Kinematics solver for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
