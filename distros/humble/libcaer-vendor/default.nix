
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, cmake, gtest, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-humble-libcaer-vendor";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer_vendor-release/archive/release/humble/libcaer_vendor/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "87671cb2104941805177fc9593c84801e6905a69584803224d6e169b7017d888";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package cmake pkg-config ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ libusb1 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around libcaer library";
    license = with lib.licenses; [ asl20 bsd2 ];
  };
}
