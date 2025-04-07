
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-lint-common, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-autoware-cmake";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_cmake-release/archive/release/jazzy/autoware_cmake/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "68b384fafc2b4a9784e83c2fc9e8af0aa8fb0bd9c049b1c168083c39280c3c8b";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ ament-cmake-auto ament-lint-auto ros-environment ];
  nativeBuildInputs = [ ament-cmake-auto ament-lint-auto ];

  meta = {
    description = "CMake scripts for Autoware";
    license = with lib.licenses; [ asl20 ];
  };
}
