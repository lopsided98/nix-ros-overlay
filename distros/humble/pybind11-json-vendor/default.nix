
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pybind11-vendor }:
buildRosPackage {
  pname = "ros-humble-pybind11-json-vendor";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_json_vendor-release/archive/release/humble/pybind11_json_vendor/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "e72b660de2305e0a78c0c0b0d4e4b156a0229a657f62d2364c43b44434b36d46";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pybind11-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A vendor package for pybind11_json for Modern C++'';
    license = with lib.licenses; [ asl20 ];
  };
}
