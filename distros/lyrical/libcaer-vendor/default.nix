
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, cmake, gtest, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-lyrical-libcaer-vendor";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer_vendor-release/archive/release/lyrical/libcaer_vendor/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "b4e6983023eb759f3a54e916b34f27eecd904ab7ed904ea0868c09917cb200f4";
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
