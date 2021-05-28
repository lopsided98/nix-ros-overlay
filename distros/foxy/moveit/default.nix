
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-core, moveit-planners, moveit-plugins, moveit-ros }:
buildRosPackage {
  pname = "ros-foxy-moveit";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "7d2c81103a590fd363b375b9edf84f71f2ded6ffeffee421dc3171c5f473c285";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package that contains all essential packages of MoveIt 2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
