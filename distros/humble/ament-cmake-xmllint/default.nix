
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-xmllint }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-xmllint";
  version = "0.12.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_xmllint/0.12.8-1.tar.gz";
    name = "0.12.8-1.tar.gz";
    sha256 = "019f16f9ad1f2ed61baf5e8277a0d8435617a75ea16af4d28f3acaf5f34e1055";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-xmllint ];

  meta = {
    description = ''The CMake API for ament_xmllint to check XML file using xmmlint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
