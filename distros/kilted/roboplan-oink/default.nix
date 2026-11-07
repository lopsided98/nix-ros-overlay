
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_libcereal-dev, ament-cmake, ament-cmake-gmock, ament-cmake-python, gtest, proxsuite, python3, python3Packages, roboplan-common, roboplan-core, roboplan-example-models }:
buildRosPackage {
  pname = "ros-kilted-roboplan-oink";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/kilted/roboplan_oink/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "06d038b942e8423a1ee6916c2514bfd5933d227360ebaa261a5056823b4e9fe8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.nanobind python3Packages.typing-extensions ];
  checkInputs = [ ament-cmake-gmock gtest roboplan-example-models ];
  propagatedBuildInputs = [ _unresolved_libcereal-dev proxsuite roboplan-common roboplan-core ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "OInK - Optimal Inverse Kinematics solver for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
