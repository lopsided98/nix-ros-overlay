
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, nlohmann_json }:
buildRosPackage {
  pname = "ros-lyrical-nlohmann-json-schema-validator-vendor";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nlohmann_json_schema_validator_vendor-release/archive/release/lyrical/nlohmann_json_schema_validator_vendor/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "09e19ef108d9bb2f3607d1256296f105685b5f8a3b86edc238318409873cd909";
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
