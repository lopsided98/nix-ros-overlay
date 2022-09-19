
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-xmllint, cmake, eigen, git, ignition, ignition-cmake2-vendor }:
buildRosPackage {
  pname = "ros-humble-ignition-math6-vendor";
  version = "0.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ignition_math6_vendor-release/archive/release/humble/ignition_math6_vendor/0.0.2-2.tar.gz";
    name = "0.0.2-2.tar.gz";
    sha256 = "fec674061b7a8feda3bdadf48c9ce762ba2170b39660f9cb763da882425167be";
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
