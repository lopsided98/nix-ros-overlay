
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-cmake-xmllint, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-libtorch-vendor";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl_buffer_backends-release/archive/release/lyrical/libtorch_vendor/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "a7780fbde8afb0d20f6f73872c37aa42f25897fac090000be7f63a528c47efda";
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
