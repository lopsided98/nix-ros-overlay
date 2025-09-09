
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, omni-base-laser-sensors, pmb2-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-laser-sensors";
  version = "4.11.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_navigation-release/archive/release/humble/tiago_laser_sensors/4.11.0-1.tar.gz";
    name = "4.11.0-1.tar.gz";
    sha256 = "777bce8e9ce145aa6926d739aaf5efbc6c389d48411023a884ff56a5290491eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ omni-base-laser-sensors pmb2-laser-sensors ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files and scripts needed to bring up the ROS nodes of a TIAGo robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
