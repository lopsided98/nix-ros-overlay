
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cartographer-ros }:
buildRosPackage {
  pname = "ros-foxy-chiconybot-cartographer";
  version = "0.0.0-r2";

  src = fetchurl {
    url = "https://github.com/jediofgever/ROS_CB-release/archive/release/foxy/chiconybot_cartographer/0.0.0-2.tar.gz";
    name = "0.0.0-2.tar.gz";
    sha256 = "0f9dd0e4a222a3cd675592c00d69263cb871d5b0b146acddbbb44793d3254d53";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ cartographer-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 launch scripts for cartographer'';
    license = with lib.licenses; [ asl20 ];
  };
}
