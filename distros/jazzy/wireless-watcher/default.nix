
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-updater, rclcpp, wireless-msgs, wirelesstools }:
buildRosPackage {
  pname = "ros-jazzy-wireless-watcher";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/jazzy/wireless_watcher/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "db2542893f0d751f4d584201e81d6c1a9f8c9f8a3758787aec49bfbbcb31902f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ diagnostic-updater rclcpp wireless-msgs wirelesstools ];

  meta = {
    description = "A node which publishes connection information about a linux wireless interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
