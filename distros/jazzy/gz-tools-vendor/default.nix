
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, gz-cmake-vendor, ruby }:
buildRosPackage {
  pname = "ros-jazzy-gz-tools-vendor";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_tools_vendor-release/archive/release/jazzy/gz_tools_vendor/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "e59b0bf1e0619d2e44a15186e2f7ae95217c1a3c1b627f6fc1ebacfc5d266e6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ gz-cmake-vendor ruby ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-tools2 2.0.1

    Gazebo Tools: Entrypoint to Gazebo's command line interface";
    license = with lib.licenses; [ asl20 ];
  };
}
