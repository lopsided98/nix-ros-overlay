
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-dbc-parser, can-msgs, raptor-pdu-msgs, rclcpp, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-pdu";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/raptor_pdu/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "4aed095d2b28abed7b9581a53b55dedbeb2b01006b16bc968e8373f1c0d3021f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-dbc-parser can-msgs raptor-pdu-msgs rclcpp std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Interface for the New Eagle Multiplex Power Distribution Module (MPDM)
    https://store.neweagle.net/product/multiplexed-power-distribution-module-mpdm/'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
