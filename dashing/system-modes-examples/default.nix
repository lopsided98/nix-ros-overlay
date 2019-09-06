
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp-lifecycle, boost, system-modes, rclcpp }:
buildRosPackage rec {
  pname = "ros-dashing-system-modes-examples";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/microROS/system_modes-release/archive/release/dashing/system_modes_examples/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "a77739b39f240f7158a9a4650f5cd1fac2103a193b2222e9b51e861763f75e5d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-lifecycle system-modes rclcpp boost ];
  checkInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp-lifecycle system-modes rclcpp boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Simple example system for system_modes package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
