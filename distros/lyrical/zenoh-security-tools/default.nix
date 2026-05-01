
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, nlohmann_json, rcpputils, rcutils, rmw-security-common, tinyxml-2, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-zenoh-security-tools";
  version = "0.10.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/lyrical/zenoh_security_tools/0.10.4-1.tar.gz";
    name = "0.10.4-1.tar.gz";
    sha256 = "47a0ced4d3fdc6990c32f9d2d159bce841387ab77d2a215d82a2759a9f3641c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ nlohmann_json ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcpputils rcutils rmw-security-common tinyxml-2 zenoh-cpp-vendor ];

  meta = {
    description = "This package generates config files to enforce security with Zenoh";
    license = with lib.licenses; [ asl20 ];
  };
}
