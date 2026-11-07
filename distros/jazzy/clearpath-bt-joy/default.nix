
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bluez, diagnostic-msgs, diagnostic-updater, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-bt-joy";
  version = "2.9.19-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_bt_joy/2.9.19-1.tar.gz";
    name = "2.9.19-1.tar.gz";
    sha256 = "9d0999860bd3c4d07d0dddac3dc634a01dd7b2a22add101b2ca16a26f4a21aff";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ bluez diagnostic-msgs diagnostic-updater python3Packages.dbus-python python3Packages.pygobject3 rclpy std-msgs ];

  meta = {
    description = "Clearpath bluetooth joy controller signal quality monitoring node";
    license = with lib.licenses; [ bsd3 ];
  };
}
