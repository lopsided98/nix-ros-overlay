
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-clober-bringup";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_bringup/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "9d49343e86f45556902c07b874fe7cfc5ca810ab3bd32c48366ee52ad62e6cfd";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober bringup package'';
    license = with lib.licenses; [ asl20 ];
  };
}
