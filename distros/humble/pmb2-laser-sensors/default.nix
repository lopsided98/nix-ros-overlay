
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-pmb2-laser-sensors";
  version = "4.5.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_laser_sensors/4.5.0-1.tar.gz";
    name = "4.5.0-1.tar.gz";
    sha256 = "5077aaa88838c96de317dbffed9992ac1ec651887fe885fc6efbf18a2ae0bf05";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files and scripts needed to bring up the ROS nodes of a PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
