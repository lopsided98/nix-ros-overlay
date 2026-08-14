
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, bluez, diagnostic-msgs, diagnostic-updater, python3Packages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-bt-joy";
  version = "2.9.14-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_common-release/archive/release/jazzy/clearpath_bt_joy/2.9.14-1.tar.gz";
    name = "2.9.14-1.tar.gz";
    sha256 = "b927399200d688173b485f5128f672a174d61e6bd855b15217caa771c7f361d3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ bluez diagnostic-msgs diagnostic-updater rclpy std-msgs ];

  meta = {
    description = "Clearpath bluetooth joy controller signal quality monitoring node";
    license = with lib.licenses; [ bsd3 ];
  };
}
