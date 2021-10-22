
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-dolly-follow";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/galactic/dolly_follow/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "0224d85d222d6225530f3c15671accd9bd853744bea7e7e10bb8fd3b368051d1";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Follow node for Dolly, the robot sheep.'';
    license = with lib.licenses; [ asl20 ];
  };
}
