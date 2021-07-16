
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-raptor-pdu-msgs";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/raptor_pdu_msgs/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "bdddcc6534eb4d4c6d8374ba8ca78f7afffd5dd03fa335f214af1c1a833cd4ef";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for the New Eagle Multiplex Power Distribution Module (MPDM) interface
    https://store.neweagle.net/product/multiplexed-power-distribution-module-mpdm/'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
