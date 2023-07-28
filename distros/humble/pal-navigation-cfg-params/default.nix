
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-navigation-cfg-params";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_navigation_cfg_public-release/archive/release/humble/pal_navigation_cfg_params/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "df6fa4e7e7b79f3c3a4c3ac39e22a2a9ffb0c4a1ab1f2afc6ffb13324b5c06ad";
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
