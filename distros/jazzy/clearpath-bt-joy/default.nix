
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bluez, diagnostic-msgs, diagnostic-updater, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-bt-joy";
  version = "2.9.18-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_bt_joy/2.9.18-1.tar.gz";
    name = "2.9.18-1.tar.gz";
    sha256 = "3382f1b55637fb95a4c1972f81727e710a9d113be46e736514508fdd234806b3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ bluez diagnostic-msgs diagnostic-updater python3Packages.dbus-python python3Packages.pygobject3 rclpy std-msgs ];

  meta = {
    description = "Clearpath bluetooth joy controller signal quality monitoring node";
    license = with lib.licenses; [ bsd3 ];
  };
}
