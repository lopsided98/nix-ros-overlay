
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, nlohmann_json }:
buildRosPackage {
  pname = "ros-jazzy-nlohmann-json-schema-validator-vendor";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nlohmann_json_schema_validator_vendor-release/archive/release/jazzy/nlohmann_json_schema_validator_vendor/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "9f3b8a3f7fbcd17a9347136e0d1fda208a33c10c245667ba42e4ef58320e4cfa";
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
