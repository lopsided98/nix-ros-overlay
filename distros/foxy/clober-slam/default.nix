
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-clober-slam";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_slam/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "34f0fb9cb9a6590a544e1a10b227d3171705834a798d0347d2bf931ea2fa4e91";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober slam package'';
    license = with lib.licenses; [ asl20 ];
  };
}
