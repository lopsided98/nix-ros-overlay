
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3, python3Packages, roboplan-common, roboplan-core }:
buildRosPackage {
  pname = "ros-kilted-roboplan-simple-ik";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/kilted/roboplan_simple_ik/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "9bca22db865d10f7c7831592def7ab9e97280e53e8b89707df0fe3dcb7d5590c";
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
