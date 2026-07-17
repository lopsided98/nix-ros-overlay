
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bluez, diagnostic-msgs, diagnostic-updater, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-bt-joy";
  version = "2.9.11-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_bt_joy/2.9.11-1.tar.gz";
    name = "2.9.11-1.tar.gz";
    sha256 = "442c2a0b932d108f9c54d2df61a88c2d9ef11e2e0974ff42d2066ad80da295ed";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ bluez diagnostic-msgs diagnostic-updater rclpy std-msgs ];

  meta = {
    description = "Clearpath bluetooth joy controller signal quality monitoring node";
    license = with lib.licenses; [ bsd3 ];
  };
}
