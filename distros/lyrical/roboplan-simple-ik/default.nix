
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3, python3Packages, roboplan }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-simple-ik";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/lyrical/roboplan_simple_ik/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "070e9becef8ddb93c7b283e19405cb4b7023ba1d62fd673cb58970dd373c8c36";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind python3Packages.typing-extensions ];
  propagatedBuildInputs = [ roboplan ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Simple inverse kinematics solver for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
