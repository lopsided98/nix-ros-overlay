
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-dbc-parser, can-msgs, raptor-pdu-msgs, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-pdu";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/raptor_pdu/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "4fca165e245f927a38bc945277af34fa6af5884b585a3c0e7bc11e9f16baccd1";
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
