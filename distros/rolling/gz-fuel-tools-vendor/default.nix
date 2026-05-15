
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, curl, gflags, gz-cmake-vendor, gz-common-vendor, gz-math-vendor, gz-msgs-vendor, gz-tools-vendor, gz-utils-vendor, jsoncpp, libyaml, libzip, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-gz-fuel-tools-vendor";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_fuel_tools_vendor-release/archive/release/rolling/gz_fuel_tools_vendor/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "055ecf9bcdd6dea6926b815a6c8c2e8b09f1269392270418535929b1603a4136";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ curl gflags gz-cmake-vendor gz-common-vendor gz-math-vendor gz-msgs-vendor gz-tools-vendor gz-utils-vendor jsoncpp libyaml libzip tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-fuel_tools 11.0.0

    Gazebo Fuel Tools: Classes and tools for interacting with Gazebo Fuel";
    license = with lib.licenses; [ asl20 ];
  };
}
