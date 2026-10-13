
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, nlohmann_json, rcpputils, rcutils, rmw-dds-common, tinyxml2-vendor, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-zenoh-security-tools";
  version = "0.2.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/jazzy/zenoh_security_tools/0.2.12-1.tar.gz";
    name = "0.2.12-1.tar.gz";
    sha256 = "b32aa0865232da71a01621e668d66594f61a47f854636a493e435fae783775b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ nlohmann_json ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rcpputils rcutils rmw-dds-common tinyxml2-vendor zenoh-cpp-vendor ];

  meta = {
    description = "This package generates config files to enforce security with Zenoh";
    license = with lib.licenses; [ asl20 ];
  };
}
