
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, pkg-config }:
buildRosPackage {
  pname = "ros-lyrical-onnxruntime-vendor";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/onnxruntime_vendor-release/archive/release/lyrical/onnxruntime_vendor/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "6f99c3887bea57a6b076c32e9a05f7f76f928f9005789ca544db214ea1ec4f7c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for ONNX Runtime 1.24.3";
    license = with lib.licenses; [ asl20 ];
  };
}
