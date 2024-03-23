
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nlohmann_json, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-rmf-api-msgs";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_api_msgs-release/archive/release/rolling/rmf_api_msgs/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "bcb443abf05d810746ef17f7643570205574934cbebb24aef848e6f77cedd66d";
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
