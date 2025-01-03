
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-ros, nav2-bringup, navigation2, rviz2 }:
buildRosPackage {
  pname = "ros-humble-andino-navigation";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_navigation/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "dd406fcbcbaa0b1eb125594c8e69ade373e3b714fc9db9628ff3683d5025cba1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-ros nav2-bringup navigation2 rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Bring up nav2 package with Andino.";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
