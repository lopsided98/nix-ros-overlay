
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, pkg-config }:
buildRosPackage {
  pname = "ros-kilted-onnxruntime-vendor";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/onnxruntime_vendor-release/archive/release/kilted/onnxruntime_vendor/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "39b9d54dff7ee43ea7a458ed302a89d686e2ddc4707e342e36a3f62bd3abd904";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for ONNX Runtime 1.24.3";
    license = with lib.licenses; [ asl20 ];
  };
}
