
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-msgs }:
buildRosPackage {
  pname = "ros-foxy-can-dbc-parser";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/can_dbc_parser/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "28b18fdf2fe15fb5c33f761f610ae929157099672439fd3c4de70e00efc9671e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''DBC file interface.  Read a DBC file, unpack CAN messages and convert to engineering units, pack values into CAN messages for publishing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
