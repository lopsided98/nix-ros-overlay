
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nlohmann_json, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-rmf-api-msgs";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_api_msgs-release/archive/release/jazzy/rmf_api_msgs/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "a647475b71d123b662f718dbd2c73ec47d54feb7b57526aa4fa3907cac019630";
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
