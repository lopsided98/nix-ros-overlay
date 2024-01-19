
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, eigen, ignition, ignition-cmake2-vendor }:
buildRosPackage {
  pname = "ros-rolling-ignition-math6-vendor";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ignition_math6_vendor-release/archive/release/rolling/ignition_math6_vendor/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "bd383d2067d415c5dd8ab728263f7d5e99be6636d6ed3c12cbe4f021dda718f6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package eigen ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ ignition-cmake2-vendor ignition.math6 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = ''This package provides the Ignition Math 6.x library.'';
    license = with lib.licenses; [ asl20 ];
  };
}
