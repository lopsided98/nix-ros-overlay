
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, soccer-vision-2d-msgs, soccer-vision-3d-msgs, soccer-vision-attribute-msgs }:
buildRosPackage {
  pname = "ros-rolling-soccer-interfaces";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/soccer_interfaces-release/archive/release/rolling/soccer_interfaces/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "85382b377d68e765a313c183f07a9c8fbdebfa34d63941505608a495479403e9";
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
