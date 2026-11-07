
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, nlohmann_json, rcpputils, rcutils, rmw, rmw-security-common, tinyxml-2, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-zenoh-security-tools";
  version = "0.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/rolling/zenoh_security_tools/0.14.1-1.tar.gz";
    name = "0.14.1-1.tar.gz";
    sha256 = "9bdbce0363bb6421b8ad61986b530b4d43fb7d1a8574f1621c6f79fb682924c7";
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
