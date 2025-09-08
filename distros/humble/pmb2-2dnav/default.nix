
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, pal-maps, ros2launch }:
buildRosPackage {
  pname = "ros-humble-pmb2-2dnav";
  version = "4.17.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_2dnav/4.17.0-1.tar.gz";
    name = "4.17.0-1.tar.gz";
    sha256 = "5697daefe05e1aa1b8ce3cf36b11cc0f605f03c463c9adc113bed2f3fadf0c83";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal pal-maps ros2launch ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "PMB2-specific launch files needed to run
    navigation on the PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
