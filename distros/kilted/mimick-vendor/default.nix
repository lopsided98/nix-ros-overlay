
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-kilted-mimick-vendor";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mimick_vendor-release/archive/release/kilted/mimick_vendor/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "1653dccc1925b672e263c1ce0f1dc8a1dedf5fd4fc4cab04ac7e85acfda411bf";
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
