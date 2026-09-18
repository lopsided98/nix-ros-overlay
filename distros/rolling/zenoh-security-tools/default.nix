
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, nlohmann_json, rcpputils, rcutils, rmw, rmw-security-common, tinyxml-2, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-zenoh-security-tools";
  version = "0.13.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/rolling/zenoh_security_tools/0.13.0-1.tar.gz";
    name = "0.13.0-1.tar.gz";
    sha256 = "c51538cbf9fcde71e2b2ab4d761e4465995885e4042eb3357d7bbae6d5313495";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros-core nlohmann_json ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcpputils rcutils rmw rmw-security-common tinyxml-2 zenoh-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-ros-core ];

  meta = {
    description = "This package generates config files to enforce security with Zenoh";
    license = with lib.licenses; [ asl20 ];
  };
}
