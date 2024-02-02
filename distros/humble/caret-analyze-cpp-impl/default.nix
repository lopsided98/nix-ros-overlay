
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pybind11-vendor, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-caret-analyze-cpp-impl";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/caret_analyze_cpp_impl-release/archive/release/humble/caret_analyze_cpp_impl/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "0729584419c01938f12c5b8b4547a42bfe0dcbcf1e2fb148190687e1b68f3cb7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ pybind11-vendor yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''c++ implementation of caret_analyze'';
    license = with lib.licenses; [ asl20 ];
  };
}
