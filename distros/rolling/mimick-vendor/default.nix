
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-mimick-vendor";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mimick_vendor-release/archive/release/rolling/mimick_vendor/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "59a3a55fd153527d2518f4056c90eaa01f4905d6bdf911817e35a06453bb745a";
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
