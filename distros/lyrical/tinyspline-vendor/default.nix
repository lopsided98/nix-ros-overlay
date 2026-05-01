
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, git }:
buildRosPackage {
  pname = "ros-lyrical-tinyspline-vendor";
  version = "0.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tinyspline_vendor-release/archive/release/lyrical/tinyspline_vendor/0.6.1-3.tar.gz";
    name = "0.6.1-3.tar.gz";
    sha256 = "51290a41cc3c6c730827a8bd51655caa411fd8c5cc5fcf8e849b4b33b26d8cf7";
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
