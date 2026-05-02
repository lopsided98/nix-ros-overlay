
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, nlohmann_json }:
buildRosPackage {
  pname = "ros-rolling-nlohmann-json-schema-validator-vendor";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nlohmann_json_schema_validator_vendor-release/archive/release/rolling/nlohmann_json_schema_validator_vendor/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "f4e366825d20638d5c89e1ccbb3720968525c370cdbc7724b9d8aa8103e3c836";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ nlohmann_json ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "A vendor package for JSON schema validator for JSON for Modern C++";
    license = with lib.licenses; [ asl20 mit ];
  };
}
