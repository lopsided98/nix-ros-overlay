
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-msgs }:
buildRosPackage {
  pname = "ros-foxy-can-dbc-parser";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/can_dbc_parser/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "a03ed6da83ea2a4a5af468c81250a912f5d85ed4d7ec2b463102dc6fdbd1022a";
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
