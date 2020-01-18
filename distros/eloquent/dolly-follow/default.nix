
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-eloquent-dolly-follow";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/eloquent/dolly_follow/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "0faf38dd63bb98a3cb54cde748b2ffec6f915eedaf076ecb7bab10c90ba2cede";
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
