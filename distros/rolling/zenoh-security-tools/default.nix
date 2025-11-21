
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, nlohmann_json, rcpputils, rcutils, rmw, rmw-security-common, tinyxml-2, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-zenoh-security-tools";
  version = "0.10.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/rolling/zenoh_security_tools/0.10.2-1.tar.gz";
    name = "0.10.2-1.tar.gz";
    sha256 = "e552b6659330bbfdfeec2135f89576ad4f8393eeb5616604a3c5cf3cc0d513df";
  };

  buildType = "ament_cmake";
  buildInputs = [ nlohmann_json ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcpputils rcutils rmw rmw-security-common tinyxml-2 zenoh-cpp-vendor ];

  meta = {
    description = "This package generates config files to enforce security with Zenoh";
    license = with lib.licenses; [ asl20 ];
  };
}
