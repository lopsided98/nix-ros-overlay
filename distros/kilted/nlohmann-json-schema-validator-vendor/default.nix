
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, nlohmann_json }:
buildRosPackage {
  pname = "ros-kilted-nlohmann-json-schema-validator-vendor";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nlohmann_json_schema_validator_vendor-release/archive/release/kilted/nlohmann_json_schema_validator_vendor/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "6fec33944e2f7c6b073b319229461190c906edb9a29f8c7ffed3e8f6aea2611a";
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
