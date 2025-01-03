
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, nlohmann_json, pybind11-vendor }:
buildRosPackage {
  pname = "ros-rolling-pybind11-json-vendor";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_json_vendor-release/archive/release/rolling/pybind11_json_vendor/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "d9c05642255326975d1d58380319843ca5ad94f19bf06d3310207f7d1e64dd06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ nlohmann_json pybind11-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "A vendor package for pybind11_json for Modern C++";
    license = with lib.licenses; [ asl20 ];
  };
}
