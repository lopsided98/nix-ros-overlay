
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, eigen, ignition-cmake2-vendor }:
buildRosPackage {
  pname = "ros-rolling-ignition-math6-vendor";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ignition_math6_vendor-release/archive/release/rolling/ignition_math6_vendor/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "cb3d05f10faa11e36bbe92099bbe7b66b0ebf88a60e3cb8aa42b6b5fc04fe1cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package eigen ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ ignition-cmake2-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "This package provides the Ignition Math 6.x library.";
    license = with lib.licenses; [ asl20 ];
  };
}
