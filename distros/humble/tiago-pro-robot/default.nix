
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-pro-bringup, tiago-pro-controller-configuration, tiago-pro-description }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-robot";
  version = "1.32.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_robot/1.32.0-1.tar.gz";
    name = "1.32.0-1.tar.gz";
    sha256 = "60132e46dd74de6e71f9da124ee59bca5dfbda2b20b02d76f68dd8c41372eed3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-pro-bringup tiago-pro-controller-configuration tiago-pro-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tiago_pro_robot package";
    license = with lib.licenses; [ asl20 ];
  };
}
