
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-lint-common, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-autoware-cmake";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_cmake-release/archive/release/jazzy/autoware_cmake/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "d628055158da252e5dcbffa9915ea13461549db7c95bcb0244543cf71298a29a";
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
