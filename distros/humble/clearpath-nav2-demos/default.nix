
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, nav2-bringup, slam-toolbox }:
buildRosPackage {
  pname = "ros-humble-clearpath-nav2-demos";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_nav2_demos-release/archive/release/humble/clearpath_nav2_demos/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "296e5408d7d0018f0e79d726148b721700c1979c297a37e3919de281d1d49f1d";
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
