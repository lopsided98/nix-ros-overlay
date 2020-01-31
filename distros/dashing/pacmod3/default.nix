
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, can-msgs, pacmod-msgs, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-pacmod3";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod3-release/archive/release/dashing/pacmod3/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "903fda537f50786c58a965a212b4519217a1679afbfd6a1cdd40928c05691719";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs pacmod-msgs rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AutonomouStuff PACMod v3 Driver Package'';
    license = with lib.licenses; [ mit ];
  };
}
