
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, omni-base-2dnav, pmb2-2dnav }:
buildRosPackage {
  pname = "ros-humble-tiago-dual-2dnav";
  version = "4.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_dual_navigation-release/archive/release/humble/tiago_dual_2dnav/4.12.0-1.tar.gz";
    name = "4.12.0-1.tar.gz";
    sha256 = "db5c9619bfebea51dd2d78e22df81d41c8a82ba31ced989007dec0432c7b607a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ omni-base-2dnav pmb2-2dnav ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "TIAGo-specific launch files needed to run navigation on a TIAGo robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
