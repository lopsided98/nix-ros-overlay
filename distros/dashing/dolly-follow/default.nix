
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-dashing-dolly-follow";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/chapulina/dolly-release/archive/release/dashing/dolly_follow/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "94b57d51b193a7ffd7b5fa02ed823ffe36e15b6cfed20488e116854563aca482";
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
