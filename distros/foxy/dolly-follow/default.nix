
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-dolly-follow";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/foxy/dolly_follow/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "190836a56e7f2f29028311a94eec3e926ae4bb9334a921e10ed6e12a7dd6b7fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Follow node for Dolly, the robot sheep.'';
    license = with lib.licenses; [ asl20 ];
  };
}
