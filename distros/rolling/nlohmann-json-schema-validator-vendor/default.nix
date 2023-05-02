
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, nlohmann_json }:
buildRosPackage {
  pname = "ros-rolling-nlohmann-json-schema-validator-vendor";
  version = "0.2.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nlohmann_json_schema_validator_vendor-release/archive/release/rolling/nlohmann_json_schema_validator_vendor/0.2.4-2.tar.gz";
    name = "0.2.4-2.tar.gz";
    sha256 = "307eba928b5553f726d93f5106376f86c178b428c9f87aa7c5ffaaa6e1c49c17";
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
