
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-dolly-follow";
  version = "0.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dolly-release/archive/release/humble/dolly_follow/0.4.0-3.tar.gz";
    name = "0.4.0-3.tar.gz";
    sha256 = "278db5ad8cfaaed64b6efb340ff120953b5ef7f2ffcb92d97ac3d958785de395";
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
