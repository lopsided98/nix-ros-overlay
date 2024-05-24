
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, curl, gflags, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-msgs-vendor, gz-tools-vendor, gz-utils-vendor, jsoncpp, libyaml, libzip, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-gz-fuel-tools-vendor";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_fuel_tools_vendor-release/archive/release/jazzy/gz_fuel_tools_vendor/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "f80dcdcf8e6f4696f169206424eb2ee8473cbd0ff7fce74d59377d06e26928af";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ curl gflags gz-cmake-vendor gz-common-vendor gz-math-vendor gz-msgs-vendor gz-tools-vendor gz-utils-vendor jsoncpp libyaml libzip tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-fuel-tools9 9.0.3

    Gazebo Fuel Tools: Classes and tools for interacting with Gazebo Fuel";
    license = with lib.licenses; [ asl20 ];
  };
}
