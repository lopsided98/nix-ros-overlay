
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, diagnostic-updater, rclcpp, wireless-msgs, wirelesstools }:
buildRosPackage {
  pname = "ros-humble-wireless-watcher";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/humble/wireless_watcher/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "7815cbb2e4cabac8be536ce26cddd61e593e47bda48d0701d5f6c8d831ca1fd7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ diagnostic-updater rclcpp wireless-msgs wirelesstools ];

  meta = {
    description = "A node which publishes connection information about a linux wireless interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
