
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-navigation-cfg-params";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_navigation_cfg_public-release/archive/release/humble/pal_navigation_cfg_params/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "daa09954ede58fa13c8c2466d91589bef33242d81f1d41fef82cb83346043c14";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Central storage of navigation configuration parameters'';
    license = with lib.licenses; [ asl20 ];
  };
}
