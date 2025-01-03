
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, nlohmann_json, pybind11-vendor }:
buildRosPackage {
  pname = "ros-jazzy-pybind11-json-vendor";
  version = "0.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_json_vendor-release/archive/release/jazzy/pybind11_json_vendor/0.4.2-1.tar.gz";
    name = "0.4.2-1.tar.gz";
    sha256 = "bfb278f1a9868b3fc049ae6f6cf229a6f3b1a1b320590d328df54a673f9e6810";
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
