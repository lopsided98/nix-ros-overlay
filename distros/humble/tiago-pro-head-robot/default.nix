
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tiago-pro-head-bringup, tiago-pro-head-controller-configuration, tiago-pro-head-description }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-head-robot";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_pro_head_robot-release/archive/release/humble/tiago_pro_head_robot/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "92ec3e729bc6f261131372bada559c76f5366d9fe03b52a68aaeea8db0036e5e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tiago-pro-head-bringup tiago-pro-head-controller-configuration tiago-pro-head-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The tiago_pro_head_robot package";
    license = with lib.licenses; [ asl20 ];
  };
}
