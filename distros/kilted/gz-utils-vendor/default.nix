
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, spdlog-vendor }:
buildRosPackage {
  pname = "ros-kilted-gz-utils-vendor";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_utils_vendor-release/archive/release/kilted/gz_utils_vendor/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "fedb8adaf9fec17c108c66cfcd2bb8b6a3ce5baaca5c8d558e030b2b29575701";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint ];
  propagatedBuildInputs = [ gz-cmake-vendor spdlog-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-utils3 3.1.1

    Gazebo Utils : Classes and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}
