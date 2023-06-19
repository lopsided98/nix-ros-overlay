
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, nlohmann_json }:
buildRosPackage {
  pname = "ros-iron-nlohmann-json-schema-validator-vendor";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nlohmann_json_schema_validator_vendor-release/archive/release/iron/nlohmann_json_schema_validator_vendor/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "50adc64b3065592f540f41758c57e7039637e01389af4e843227c8bb766fd6e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ nlohmann_json ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''A vendor package for JSON schema validator for JSON for Modern C++'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
