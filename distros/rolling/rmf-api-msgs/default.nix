
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nlohmann_json, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-rmf-api-msgs";
  version = "0.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_api_msgs-release/archive/release/rolling/rmf_api_msgs/0.0.1-5.tar.gz";
    name = "0.0.1-5.tar.gz";
    sha256 = "476ea5590dabfa043e12cfaef14de7ada1e4f22a623ad6fa6ad7270f59c1cb1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nlohmann_json python3Packages.jinja2 python3Packages.jsonschema ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RMF API msgs definition'';
    license = with lib.licenses; [ asl20 ];
  };
}
