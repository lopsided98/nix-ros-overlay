
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, launch, launch-ros, launch-testing, launch-testing-ament-cmake, python3Packages, ros2nodl }:
buildRosPackage {
  pname = "ros-jazzy-ament-nodl";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/jazzy/ament_nodl/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "56b7b42975d425532decf32c1fccbbbd43aac967288f47fe0def6dfc5dce271e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-pytest python3Packages.pytest ];
  propagatedBuildInputs = [ launch launch-ros launch-testing launch-testing-ament-cmake ros2nodl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake integration for NoDL features, such as ament index registration and test target creation.";
    license = with lib.licenses; [ asl20 ];
  };
}
