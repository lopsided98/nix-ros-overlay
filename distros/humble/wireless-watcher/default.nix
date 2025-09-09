
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, diagnostic-updater, rclcpp, wireless-msgs, wirelesstools }:
buildRosPackage {
  pname = "ros-humble-wireless-watcher";
  version = "1.1.5-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/humble/wireless_watcher/1.1.5-2.tar.gz";
    name = "1.1.5-2.tar.gz";
    sha256 = "354ddab3aade00b437ad90f6aa8a427187eeb73280cd663990f150cabdfff036";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-updater rclcpp wireless-msgs wirelesstools ];

  meta = {
    description = "A node which publishes connection information about a linux wireless interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
