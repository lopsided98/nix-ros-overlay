
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-rolling-tinyspline-vendor";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyspline_vendor-release/archive/release/rolling/tinyspline_vendor/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "5f27a0acd6306423e286fe657b63824030c2376cbd18d86b6f633d6e292089f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "The vendor package for tinyspline.";
    license = with lib.licenses; [ asl20 mit ];
  };
}
