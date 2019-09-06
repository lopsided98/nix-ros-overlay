
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-cmake-core, ament-cmake-test, ament-cmake-lint-cmake, ament-cmake-copyright }:
buildRosPackage rec {
  pname = "ros-dashing-ament-cmake-xmllint";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_xmllint/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "a2c4942ea62a12abd8499dbdcb0173a991b4bde727c587bb083d76422eff60dc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-xmllint ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_xmllint to check XML file using xmmlint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
