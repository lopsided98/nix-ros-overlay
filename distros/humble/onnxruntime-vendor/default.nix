
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, pkg-config }:
buildRosPackage {
  pname = "ros-humble-onnxruntime-vendor";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/onnxruntime_vendor-release/archive/release/humble/onnxruntime_vendor/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "42a3c4c973336a2a53470b15981de97b7e072afc8fcfd19794e5e1335c1f609b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git pkg-config ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for ONNX Runtime 1.24.3";
    license = with lib.licenses; [ asl20 ];
  };
}
