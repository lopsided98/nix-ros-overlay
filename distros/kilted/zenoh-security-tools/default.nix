
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, nlohmann_json, rcpputils, rcutils, rmw, rmw-security-common, tinyxml2-vendor, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-zenoh-security-tools";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/kilted/zenoh_security_tools/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "5f634868e8fbf2e3cd7950eba48e6b7264313aa8135426207ab9c5d6cbc8a2e8";
  };

  buildType = "ament_cmake";
  buildInputs = [ nlohmann_json ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcpputils rcutils rmw rmw-security-common tinyxml2-vendor zenoh-cpp-vendor ];

  meta = {
    description = "This package generates config files to enforce security with Zenoh";
    license = with lib.licenses; [ asl20 ];
  };
}
