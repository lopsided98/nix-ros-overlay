
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, nlohmann_json, rcpputils, rcutils, rmw, rmw-security-common, tinyxml2-vendor, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-zenoh-security-tools";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/rolling/zenoh_security_tools/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "9c78e1138a0ebdb5a975b26129e9f9067bd7454159e55549647aca90d417a37f";
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
