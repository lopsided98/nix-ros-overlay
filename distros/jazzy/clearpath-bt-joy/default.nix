
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bluez, diagnostic-msgs, diagnostic-updater, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-bt-joy";
  version = "2.9.16-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_bt_joy/2.9.16-1.tar.gz";
    name = "2.9.16-1.tar.gz";
    sha256 = "710b2249fd3ed4d3150d3fb2ca1e04be224b59513a66082a57280948b5f6aa9c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ bluez diagnostic-msgs diagnostic-updater rclpy std-msgs ];

  meta = {
    description = "Clearpath bluetooth joy controller signal quality monitoring node";
    license = with lib.licenses; [ bsd3 ];
  };
}
