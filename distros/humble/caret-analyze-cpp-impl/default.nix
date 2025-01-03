
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pybind11-vendor, python-cmake-module, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-caret-analyze-cpp-impl";
  version = "0.5.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/caret_analyze_cpp_impl-release/archive/release/humble/caret_analyze_cpp_impl/0.5.0-5.tar.gz";
    name = "0.5.0-5.tar.gz";
    sha256 = "5c5003de6c5513668e60e0ed633864b5e528fbe7e0e4b8371339b9c7dc08a5a9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python-cmake-module ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pybind11-vendor yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake python-cmake-module ];

  meta = {
    description = "c++ implementation of caret_analyze";
    license = with lib.licenses; [ asl20 ];
  };
}
