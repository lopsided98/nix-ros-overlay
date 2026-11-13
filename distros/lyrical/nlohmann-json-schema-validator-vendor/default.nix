
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, nlohmann_json }:
buildRosPackage {
  pname = "ros-lyrical-nlohmann-json-schema-validator-vendor";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nlohmann_json_schema_validator_vendor-release/archive/release/lyrical/nlohmann_json_schema_validator_vendor/0.6.1-2.tar.gz";
    name = "0.6.1-2.tar.gz";
    sha256 = "fa2159a2f82041ada65995f4b73a6dd16cbd3e2af547dd10e38b394d67aa558c";
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
