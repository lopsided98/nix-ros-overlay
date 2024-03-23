
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-xmllint }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-xmllint";
  version = "0.16.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_xmllint/0.16.3-2.tar.gz";
    name = "0.16.3-2.tar.gz";
    sha256 = "007a03cf8b851e077e95154c8fabb90106f0e45f16038aaeee41d0a1aae04192";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-xmllint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-xmllint ];

  meta = {
    description = "The CMake API for ament_xmllint to check XML file using xmmlint.";
    license = with lib.licenses; [ asl20 ];
  };
}
