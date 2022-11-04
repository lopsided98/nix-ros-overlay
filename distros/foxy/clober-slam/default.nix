
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-clober-slam";
  version = "0.2.0-r5";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_slam/0.2.0-5.tar.gz";
    name = "0.2.0-5.tar.gz";
    sha256 = "454b7fc14ff9029a21a4cefb0ad546989d5c5198c32c83188fcc953786a0991e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober slam package'';
    license = with lib.licenses; [ asl20 ];
  };
}
