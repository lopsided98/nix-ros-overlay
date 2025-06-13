
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, ruby }:
buildRosPackage {
  pname = "ros-kilted-gz-tools-vendor";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_tools_vendor-release/archive/release/kilted/gz_tools_vendor/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "c3f6aba1412c320302dbb9caf278ac430342c190b4ed0ea8cc1618b3dbca9aa9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ gz-cmake-vendor ruby ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-tools2 2.0.2

    Gazebo Tools: Entrypoint to Gazebo's command line interface";
    license = with lib.licenses; [ asl20 ];
  };
}
