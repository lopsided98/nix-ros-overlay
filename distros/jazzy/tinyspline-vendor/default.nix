
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-jazzy-tinyspline-vendor";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyspline_vendor-release/archive/release/jazzy/tinyspline_vendor/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "9002627f1627dfd9810ff4fdb95ab7c1098cc9a186a4b0728b6c17bfffe4f31c";
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
