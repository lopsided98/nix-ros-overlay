
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-mimick-vendor";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mimick_vendor-release/archive/release/jazzy/mimick_vendor/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "5f6b3fe333ee7113c9c103cbfa7d5a87961a57197de635fe25c235b73cc8853f";
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
