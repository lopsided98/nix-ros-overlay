
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, can-msgs, pacmod-msgs, rclcpp, rclcpp-components, rclcpp-lifecycle, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-pacmod3";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/astuff/pacmod3-release/archive/release/dashing/pacmod3/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "1d3a8654ea4ac286c7c73ab55e50160c62745891683c27f582a2c00a49cd3a99";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs pacmod-msgs rclcpp rclcpp-components rclcpp-lifecycle std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''AutonomouStuff PACMod v3 Driver Package'';
    license = with lib.licenses; [ mit ];
  };
}
