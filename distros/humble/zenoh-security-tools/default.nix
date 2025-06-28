
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, nlohmann_json, rcpputils, rcutils, rmw, rmw-dds-common, tinyxml2-vendor, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-zenoh-security-tools";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/humble/zenoh_security_tools/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "62b1ffdc221cf03239e718825cc76003d6d92aff48721133f2c1bcbda1095ab1";
  };

  buildType = "ament_cmake";
  buildInputs = [ nlohmann_json ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcpputils rcutils rmw rmw-dds-common tinyxml2-vendor zenoh-cpp-vendor ];

  meta = {
    description = "This package generates config files to enforce security with Zenoh";
    license = with lib.licenses; [ asl20 ];
  };
}
