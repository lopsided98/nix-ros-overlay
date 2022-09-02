
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, rclcpp-action, test-msgs }:
buildRosPackage {
  pname = "ros-galactic-realtime-tools";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/realtime_tools-release/archive/release/galactic/realtime_tools/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "9d535c4fe28b89835941594ba0cb99faad62b0be4d5a49c2edba45c8ac8b5929";
  };

  buildType = "ament_cmake";
  checkInputs = [ rclcpp-action test-msgs ];
  propagatedBuildInputs = [ ament-cmake rclcpp rclcpp-action ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.'';
    license = with lib.licenses; [ "3-Clause-BSD" ];
  };
}
