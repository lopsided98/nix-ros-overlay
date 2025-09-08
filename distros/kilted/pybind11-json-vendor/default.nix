
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, nlohmann_json, pybind11-vendor }:
buildRosPackage {
  pname = "ros-kilted-pybind11-json-vendor";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_json_vendor-release/archive/release/kilted/pybind11_json_vendor/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "f2712d870edb2fa8a12c0fb06e489e6c65670e890acb829a90712aea00ef2273";
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
