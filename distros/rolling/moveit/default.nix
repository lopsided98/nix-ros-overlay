
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-core, moveit-planners, moveit-plugins, moveit-ros, moveit-setup-assistant }:
buildRosPackage {
  pname = "ros-rolling-moveit";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/rolling/moveit/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "04db3540623d88fafdc356ab43abd09192ae4c9608db992d2148981b2092cebd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros moveit-setup-assistant ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta package that contains all essential packages of MoveIt 2'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
