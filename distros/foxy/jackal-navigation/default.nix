
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav2-bringup, slam-toolbox }:
buildRosPackage {
  pname = "ros-foxy-jackal-navigation";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/foxy/jackal_navigation/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "fc349ce12011f6ffa0692e7cafb40a70e56217956d2c35ffe392205950b81aa2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
