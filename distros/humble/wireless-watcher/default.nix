
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rclcpp, wireless-msgs, wirelesstools }:
buildRosPackage {
  pname = "ros-humble-wireless-watcher";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/wireless-release/archive/release/humble/wireless_watcher/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "7a63802fe7418741ba7ff3f1ab18ca5cceb6b6f1d2933ea916906b4d977fc264";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rclcpp wireless-msgs wirelesstools ];

  meta = {
    description = "A node which publishes connection information about a linux wireless interface.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
