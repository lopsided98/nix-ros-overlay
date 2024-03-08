
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, laser-filters }:
buildRosPackage {
  pname = "ros-humble-pmb2-laser-sensors";
  version = "4.0.12-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_laser_sensors/4.0.12-1.tar.gz";
    name = "4.0.12-1.tar.gz";
    sha256 = "22e4ad9cbabc5fdc1e0fb40bd407233a42736903fd322a165cc4fd0d7109f097";
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
