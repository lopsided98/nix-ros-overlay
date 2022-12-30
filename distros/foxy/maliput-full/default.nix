
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, maliput, maliput-dragway, maliput-drake, maliput-integration, maliput-malidrive, maliput-multilane, maliput-object, maliput-object-py, maliput-osm, maliput-py, maliput-sparse, maliput-viz }:
buildRosPackage {
  pname = "ros-foxy-maliput-full";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/maliput_infrastructure-release/archive/release/foxy/maliput_full/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "004c3eed0fc6ca317254087ea8215baacea3843d551e68dd39a23163c38eb2e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ maliput maliput-dragway maliput-drake maliput-integration maliput-malidrive maliput-multilane maliput-object maliput-object-py maliput-osm maliput-py maliput-sparse maliput-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package that concentrates all maliput-related packages'';
    license = with lib.licenses; [ bsd3 ];
  };
}
