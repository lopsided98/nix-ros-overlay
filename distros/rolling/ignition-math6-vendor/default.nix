
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, eigen, git, ignition, ignition-cmake2-vendor }:
buildRosPackage {
  pname = "ros-rolling-ignition-math6-vendor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ignition_math6_vendor-release/archive/release/rolling/ignition_math6_vendor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "2c826e03ad1e8c001c523beb98b407b1e0b34097dc2e0636a3a9886abaa4f340";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake-test cmake eigen git ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ ignition-cmake2-vendor ignition.math6 ];
  nativeBuildInputs = [ ament-cmake-test cmake git ];

  meta = {
    description = ''This package provides the Ignition Math 6.x library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
