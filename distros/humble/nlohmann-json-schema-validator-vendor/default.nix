
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-libraries, nlohmann_json }:
buildRosPackage {
  pname = "ros-humble-nlohmann-json-schema-validator-vendor";
  version = "0.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nlohmann_json_schema_validator_vendor-release/archive/release/humble/nlohmann_json_schema_validator_vendor/0.1.3-3.tar.gz";
    name = "0.1.3-3.tar.gz";
    sha256 = "e1d917c70e938c5d253c5767f7ecd6082d235e9beb4299de69f6437a64dc84fa";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ nlohmann_json ];
  nativeBuildInputs = [ ament-cmake ament-cmake-libraries ];

  meta = {
    description = ''A vendor package for JSON schema validator for JSON for Modern C++'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
