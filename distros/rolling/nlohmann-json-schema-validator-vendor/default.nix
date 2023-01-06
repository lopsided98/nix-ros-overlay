
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, nlohmann_json }:
buildRosPackage {
  pname = "ros-rolling-nlohmann-json-schema-validator-vendor";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nlohmann_json_schema_validator_vendor-release/archive/release/rolling/nlohmann_json_schema_validator_vendor/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "d3bfaef045250a66f7c50192d072717034d87493c1739bddcd5d8518ca23576f";
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
