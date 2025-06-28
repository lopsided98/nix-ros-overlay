
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, nlohmann_json, rcpputils, rcutils, rmw, rmw-dds-common, tinyxml2-vendor, zenoh-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-zenoh-security-tools";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmw_zenoh-release/archive/release/jazzy/zenoh_security_tools/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "da40d5197af9da4bc55a14153053d4e1a9996e62a023946f8333a01560319e79";
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
