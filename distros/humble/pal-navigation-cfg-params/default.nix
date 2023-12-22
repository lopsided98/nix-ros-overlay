
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pal-navigation-cfg-params";
  version = "3.0.6-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_navigation_cfg_public-release/archive/release/humble/pal_navigation_cfg_params/3.0.6-1.tar.gz";
    name = "3.0.6-1.tar.gz";
    sha256 = "935d30bd7d704129ff689388e523769e20a7f8d8593bcb21534e2e9356f8a1d4";
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
