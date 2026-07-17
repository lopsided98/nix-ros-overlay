
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, diagnostic-updater, rclcpp, wireless-msgs, wirelesstools }:
buildRosPackage {
  pname = "ros-humble-wireless-watcher";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/humble/wireless_watcher/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "768fcb82288c01bc46286984056f885a57035151a0b43b8c69b4dacef7ffcd61";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ diagnostic-updater rclcpp wireless-msgs wirelesstools ];

  meta = {
    description = "A node which publishes connection information about a linux wireless interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
