
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, soccer-vision-2d-msgs, soccer-vision-3d-msgs, soccer-vision-attribute-msgs }:
buildRosPackage {
  pname = "ros-humble-soccer-interfaces";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/humble/soccer_interfaces/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "eebcf5e4c80c4f01480092b62b2d478737c77e8c8cc5403e55536dea91f35177";
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
