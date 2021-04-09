
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-msgs }:
buildRosPackage {
  pname = "ros-dashing-raptor-can-dbc-parser";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/dashing/raptor_can_dbc_parser/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "1aeb5410a2f2a9238896edaa7be4b1d7f0f5462831f2c676f37129f6ad013d36";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ can-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''DBC file interface.  Read a DBC file, unpack CAN messages and convert to engineering units, pack values into CAN messages for publishing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
