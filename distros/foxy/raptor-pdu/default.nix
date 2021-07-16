
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-dbc-parser, can-msgs, raptor-pdu-msgs, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-pdu";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/raptor_pdu/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "be55a9a3a8fc2ae7a165d70b8142b0af11ebe0f41ba289e60abdabaa4804fa98";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-dbc-parser can-msgs raptor-pdu-msgs rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Interface for the New Eagle Multiplex Power Distribution Module (MPDM)
    https://store.neweagle.net/product/multiplexed-power-distribution-module-mpdm/'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
