
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, nav2-bringup, slam-toolbox }:
buildRosPackage {
  pname = "ros-humble-clearpath-nav2-demos";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_nav2_demos-release/archive/release/humble/clearpath_nav2_demos/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "a0d37c58b144c2e461db93f24360b334e3e01b5460e0c59d7f0f82ebaa4dfd32";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-config nav2-bringup slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Nav2 demos for Clearpath robots'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
