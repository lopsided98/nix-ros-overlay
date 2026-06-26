
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-cppcheck, ament-cmake-export-dependencies, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint }:
buildRosPackage {
  pname = "ros-humble-autoware-lint-common";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_cmake-release/archive/release/humble/autoware_lint_common/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "86574bbd9743513818d83965b9728d725a0f600c2a32b82f8a8399932c64de0a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-export-dependencies ];
  propagatedBuildInputs = [ ament-cmake-copyright ament-cmake-core ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-test ament-cmake-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-test ];

  meta = {
    description = "The list of commonly used linters in Autoware";
    license = with lib.licenses; [ asl20 ];
  };
}
