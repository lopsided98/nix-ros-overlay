
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-libtorch-vendor";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends-release/archive/release/rolling/libtorch_vendor/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "368ba3d17d28dbf55fe11ddc5dc696a3b13a5b62fbe6998d6543005e18eddb5a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-xmllint ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package that downloads and installs the pre-built
  LibTorch C++ distribution for torch_conversions and other packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
