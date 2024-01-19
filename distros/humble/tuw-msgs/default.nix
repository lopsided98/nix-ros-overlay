
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, tuw-airskin-msgs, tuw-geometry-msgs, tuw-multi-robot-msgs, tuw-nav-msgs, tuw-object-msgs }:
buildRosPackage {
  pname = "ros-humble-tuw-msgs";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/humble/tuw_msgs/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "bc9a6396972d8ed7e10f4860a1f3ca3bf2ff7d5383e8d8f396f97f4ab1afc1e5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ tuw-airskin-msgs tuw-geometry-msgs tuw-multi-robot-msgs tuw-nav-msgs tuw-object-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The tuw_msgs meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
