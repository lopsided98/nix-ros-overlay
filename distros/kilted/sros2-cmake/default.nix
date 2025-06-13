
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-test, ament-lint-auto, ament-lint-common, ros2cli, sros2 }:
buildRosPackage {
  pname = "ros-kilted-sros2-cmake";
  version = "0.15.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sros2-release/archive/release/kilted/sros2_cmake/0.15.2-1.tar.gz";
    name = "0.15.2-1.tar.gz";
    sha256 = "66cb64d7f295f34eb442c77442e057b845cf5a97664faee3d1f4ed5517bf571d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-test ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros2cli sros2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CMake macros to configure security";
    license = with lib.licenses; [ asl20 ];
  };
}
