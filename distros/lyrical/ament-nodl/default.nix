
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, launch, launch-ros, launch-testing, launch-testing-ament-cmake, python3Packages, ros2nodl }:
buildRosPackage {
  pname = "ros-lyrical-ament-nodl";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/lyrical/ament_nodl/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "b6f7522f0cb85ef1ba6fe2b1e3717146b512fd9ac6fbe05cc4e35e02c0ea231b";
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
