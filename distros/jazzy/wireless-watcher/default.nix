
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-updater, rclcpp, wireless-msgs, wirelesstools }:
buildRosPackage {
  pname = "ros-jazzy-wireless-watcher";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/jazzy/wireless_watcher/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "a4fe28d7c6ef1f909182f99f37b7d66e2cc48ae8cc73555e0b79661e7a7d2b0d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ diagnostic-updater rclcpp wireless-msgs wirelesstools ];

  meta = {
    description = "A node which publishes connection information about a linux wireless interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
