
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, elite-cs-series-sdk, elite-robots-calibration, elite-robots-controllers, elite-robots-dashboard-msgs, elite-robots-driver, elite-robots-moveit-config, elite-robots-msgs }:
buildRosPackage {
  pname = "ros-humble-elite-robots";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/humble/elite_robots/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "8c7f458f5afcf3126a9a16cfa86128937ad70013f90bd547cf5aaa7ba301f093";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ elite-cs-series-sdk elite-robots-calibration elite-robots-controllers elite-robots-dashboard-msgs elite-robots-driver elite-robots-moveit-config elite-robots-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage providing a single installation point for the Elite Robots ROS 2 packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
