
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-clober-slam";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_slam/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "a931238806f15ac9d2addd9f2956788d7d704559521422bb1cc389c8cb164a6c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober slam package'';
    license = with lib.licenses; [ asl20 ];
  };
}
