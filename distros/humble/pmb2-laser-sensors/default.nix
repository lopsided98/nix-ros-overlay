
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, laser-filters }:
buildRosPackage {
  pname = "ros-humble-pmb2-laser-sensors";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_laser_sensors/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "18b1a31cf62b815ea81a4db58adb011b2a203a1b2c02614b3bcd3b8bbdceb2f0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ laser-filters ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Launch files and scripts needed to bring up the ROS nodes of a PMB2 robot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
