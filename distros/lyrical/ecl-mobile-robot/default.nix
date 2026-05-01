
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, ecl-build, ecl-errors, ecl-formatters, ecl-geometry, ecl-license, ecl-linear-algebra, ecl-math }:
buildRosPackage {
  pname = "ros-lyrical-ecl-mobile-robot";
  version = "1.2.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/lyrical/ecl_mobile_robot/1.2.1-6.tar.gz";
    name = "1.2.1-6.tar.gz";
    sha256 = "253081f131762c46fcebf242295f9943847fbac2fadc7cc9f006aad8cedd8b66";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ecl-build ecl-errors ecl-formatters ecl-geometry ecl-license ecl-linear-algebra ecl-math ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Contains transforms (e.g. differential drive inverse kinematics)
    for the various types of mobile robot platforms.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
