
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, curl, gflags, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-msgs-vendor, gz-tools-vendor, gz-utils-vendor, jsoncpp, libyaml, libzip, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-gz-fuel-tools-vendor";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_fuel_tools_vendor-release/archive/release/rolling/gz_fuel_tools_vendor/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "a2e30fb3768aee1914112fb17ed95848ae9faa54f3b1243b381d0bd28bcc1977";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ curl gflags gz-cmake-vendor gz-common-vendor gz-math-vendor gz-msgs-vendor gz-tools-vendor gz-utils-vendor jsoncpp libyaml libzip tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-fuel_tools9 9.1.0

    Gazebo Fuel Tools: Classes and tools for interacting with Gazebo Fuel";
    license = with lib.licenses; [ asl20 ];
  };
}
