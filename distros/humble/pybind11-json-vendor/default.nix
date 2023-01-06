
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, nlohmann_json, pybind11-vendor }:
buildRosPackage {
  pname = "ros-humble-pybind11-json-vendor";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_json_vendor-release/archive/release/humble/pybind11_json_vendor/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "96bf74cbf7120fcc4b0ac6839b87eb9b27ff83903bd6f17ab64257b0906fce55";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ nlohmann_json pybind11-vendor ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''A vendor package for pybind11_json for Modern C++'';
    license = with lib.licenses; [ asl20 ];
  };
}
