
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nlohmann_json, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-rmf-api-msgs";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_api_msgs-release/archive/release/rolling/rmf_api_msgs/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "03ebeb833f860d1227f89c738e983a258cf7c85f6714c3ffc14f82950d26049d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nlohmann_json python3Packages.jinja2 python3Packages.jsonschema ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RMF API msgs definition";
    license = with lib.licenses; [ asl20 ];
  };
}
