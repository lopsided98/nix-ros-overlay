
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-msgs, raptor-can-dbc-parser, raptor-pdu-msgs, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-raptor-pdu";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/dashing/raptor_pdu/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d0163e6f543ee3b559754afcce4bf9288671a350919bffbc632259581f3a8b41";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs raptor-can-dbc-parser raptor-pdu-msgs rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Interface for the New Eagle Multiplex Power Distribution Module (MPDM)
    https://store.neweagle.net/product/multiplexed-power-distribution-module-mpdm/'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
