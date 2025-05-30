
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-mimick-vendor";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mimick_vendor-release/archive/release/rolling/mimick_vendor/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "e9208cd4cecafea6746eb1fe7e53e687bca23209967af19ed92ee27fb5e76265";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around mimick, it provides an ExternalProject build of mimick.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
