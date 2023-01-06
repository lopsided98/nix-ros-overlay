
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, nlohmann_json, pybind11-vendor }:
buildRosPackage {
  pname = "ros-rolling-pybind11-json-vendor";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_json_vendor-release/archive/release/rolling/pybind11_json_vendor/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "9a2effacb4289db6471fb972d7e528e31ab51fce12bf32af3ccda012486bef68";
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
