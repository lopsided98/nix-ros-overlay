
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp, wireless-msgs, wirelesstools }:
buildRosPackage {
  pname = "ros-humble-wireless-watcher";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/humble/wireless_watcher/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "c6241524281c4c1a1ad46cc94c1e07ae9ac006e0703749a0200c62b03cc7f15a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp wireless-msgs wirelesstools ];

  meta = {
    description = "A node which publishes connection information about a linux wireless interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
