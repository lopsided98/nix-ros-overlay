
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, nlohmann_json, pybind11-vendor }:
buildRosPackage {
  pname = "ros-iron-pybind11-json-vendor";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_json_vendor-release/archive/release/iron/pybind11_json_vendor/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "df8944b7a44cb136c67dfabb2b5b992a6313ea611cc76452f10bed7aa510ab8a";
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
