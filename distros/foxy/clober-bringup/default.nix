
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-clober-bringup";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_bringup/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "e7b1900617faaacc9dbb84cd05d31604678cccc98aff82976e0bd9891f9c38fb";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober bringup package'';
    license = with lib.licenses; [ asl20 ];
  };
}
