
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, soccer-vision-2d-msgs, soccer-vision-3d-msgs, soccer-vision-attribute-msgs }:
buildRosPackage {
  pname = "ros-iron-soccer-interfaces";
  version = "0.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/iron/soccer_interfaces/0.2.0-3.tar.gz";
    name = "0.2.0-3.tar.gz";
    sha256 = "53f7e5c8b9494ace40c05d703cd8b6ade2d75f72886ca2723e25dfa8edbcfbf0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ soccer-vision-2d-msgs soccer-vision-3d-msgs soccer-vision-attribute-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for soccer-related interfaces'';
    license = with lib.licenses; [ asl20 ];
  };
}
