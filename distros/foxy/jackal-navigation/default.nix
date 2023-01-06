
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav2-bringup, slam-toolbox }:
buildRosPackage {
  pname = "ros-foxy-jackal-navigation";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/foxy/jackal_navigation/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "a7dfe807131fa2ea3129b75ead05e14a1071eede76b1a38280097f96c364f792";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-bringup slam-toolbox ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Jackal'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
