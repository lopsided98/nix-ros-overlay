
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-uncrustify }:
buildRosPackage {
  pname = "ros-rolling-rmf-cmake-uncrustify";
  version = "1.2.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_cmake_uncrustify-release/archive/release/rolling/rmf_cmake_uncrustify/1.2.0-5.tar.gz";
    name = "1.2.0-5.tar.gz";
    sha256 = "53be53cd57e4a9a6bb72409df00b08e54443036a0c40a20f5f27595d1ae63ee7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-uncrustify ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-uncrustify ];

  meta = {
    description = "ament_cmake_uncrustify with support for parsing a config file.";
    license = with lib.licenses; [ asl20 ];
  };
}
