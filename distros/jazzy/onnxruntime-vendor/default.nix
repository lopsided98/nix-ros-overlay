
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, pkg-config }:
buildRosPackage {
  pname = "ros-jazzy-onnxruntime-vendor";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/onnxruntime_vendor-release/archive/release/jazzy/onnxruntime_vendor/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "3c1f6d288b885166709e4ac9a3396dc7b5bfbaff217f6628d06a84a9d4a68669";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for ONNX Runtime 1.24.3";
    license = with lib.licenses; [ asl20 ];
  };
}
