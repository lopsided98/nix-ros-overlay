
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, nlohmann_json, pybind11-vendor }:
buildRosPackage {
  pname = "ros-rolling-pybind11-json-vendor";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_json_vendor-release/archive/release/rolling/pybind11_json_vendor/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "a5e09f7bf9d418ea966b21eaa78367a3861d82b44452007e1210eb953bbb406c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ nlohmann_json pybind11-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = ''A vendor package for pybind11_json for Modern C++'';
    license = with lib.licenses; [ asl20 ];
  };
}
