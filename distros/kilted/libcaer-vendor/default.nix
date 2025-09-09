
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, cmake, gtest, libusb1, pkg-config }:
buildRosPackage {
  pname = "ros-kilted-libcaer-vendor";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libcaer_vendor-release/archive/release/kilted/libcaer_vendor/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "136de6eaf27d55b7ada104358cade3b8f1e9d557f7e56756555e28123091a0cd";
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
