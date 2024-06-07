
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nlohmann_json, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-rmf-api-msgs";
  version = "0.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_api_msgs-release/archive/release/jazzy/rmf_api_msgs/0.2.1-3.tar.gz";
    name = "0.2.1-3.tar.gz";
    sha256 = "9da535ed5b07b1e29daab4c6873071b52a0fd52f55643dc76cb7cfa801004483";
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
