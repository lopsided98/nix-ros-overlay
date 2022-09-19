
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, backward-ros }:
buildRosPackage {
  pname = "ros-humble-moveit-common";
  version = "2.5.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/humble/moveit_common/2.5.3-1.tar.gz";
    name = "2.5.3-1.tar.gz";
    sha256 = "175c41ba7337d2702a2f4dc44c4644e6fe3bc01f7d88f075ca1457a93677f184";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ backward-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common support functionality used throughout MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
