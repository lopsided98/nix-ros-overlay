
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, pkg-config }:
buildRosPackage {
  pname = "ros-kilted-onnxruntime-vendor";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/onnxruntime_vendor-release/archive/release/kilted/onnxruntime_vendor/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "da5b6a38ae14bbfd43eef13d5a9ed3d03a4ac5794f1693ac93f1a0219659b498";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for ONNX Runtime 1.24.3";
    license = with lib.licenses; [ asl20 ];
  };
}
