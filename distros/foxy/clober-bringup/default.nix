
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-clober-bringup";
  version = "0.2.0-r5";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_bringup/0.2.0-5.tar.gz";
    name = "0.2.0-5.tar.gz";
    sha256 = "4a81d8bbfaa193268b2cfda800c52fa48cf0b1870404e2c9ca20a7d6449e01dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober bringup package'';
    license = with lib.licenses; [ asl20 ];
  };
}
