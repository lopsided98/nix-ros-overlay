
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-lint-common, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-autoware-cmake";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_cmake-release/archive/release/jazzy/autoware_cmake/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "dff2289313a9bf4579a1b6a1b3b880ded73b51781eb2873fa3f4958ea27e94be";
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
