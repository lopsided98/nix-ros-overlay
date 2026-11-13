
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nlohmann_json, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-rmf-api-msgs";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_api_msgs-release/archive/release/lyrical/rmf_api_msgs/0.6.1-2.tar.gz";
    name = "0.6.1-2.tar.gz";
    sha256 = "367dd25184989f984bc158c762f2430bd2a39b5248c5b7aa9d2dd5fa919ea98b";
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
