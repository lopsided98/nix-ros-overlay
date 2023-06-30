
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, laser-filters }:
buildRosPackage {
  pname = "ros-humble-pmb2-laser-sensors";
  version = "4.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pmb2_navigation-gbp/archive/release/humble/pmb2_laser_sensors/4.0.5-1.tar.gz";
    name = "4.0.5-1.tar.gz";
    sha256 = "43c9ac1afab30b76c5b7afcf62694206d40e7990071518d9ad7c233abea85ed4";
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
