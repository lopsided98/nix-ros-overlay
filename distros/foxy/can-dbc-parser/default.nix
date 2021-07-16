
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, can-msgs }:
buildRosPackage {
  pname = "ros-foxy-can-dbc-parser";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/NewEagleRaptor/raptor-dbw-ros2-release/archive/release/foxy/can_dbc_parser/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "a42bada40317be633003986455505424957a9378175a2689d57029e1a3ba990a";
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
