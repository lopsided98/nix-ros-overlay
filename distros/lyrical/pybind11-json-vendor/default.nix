
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, nlohmann_json, pybind11-vendor }:
buildRosPackage {
  pname = "ros-lyrical-pybind11-json-vendor";
  version = "0.7.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_json_vendor-release/archive/release/lyrical/pybind11_json_vendor/0.7.1-2.tar.gz";
    name = "0.7.1-2.tar.gz";
    sha256 = "8b5460cc34b30e3d93c550d136a370fdf561a122c7c7509a2810090e5ce71047";
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
