
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nlohmann_json, python3Packages }:
buildRosPackage {
  pname = "ros-humble-rmf-api-msgs";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_api_msgs-release/archive/release/humble/rmf_api_msgs/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "81e1980a8869f42e676a032a80a462261c6fa4a9a4d5848b268074046081831e";
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
