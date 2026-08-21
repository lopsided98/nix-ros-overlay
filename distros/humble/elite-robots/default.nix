
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, elite-robots-calibration, elite-robots-controllers, elite-robots-dashboard-msgs, elite-robots-driver, elite-robots-moveit-config, elite-robots-msgs }:
buildRosPackage {
  pname = "ros-humble-elite-robots";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/humble/elite_robots/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b3ace12599e5a3d1b73b582d8aa051e4c4fa260cc252489f2d2e0b79a2388677";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ elite-robots-calibration elite-robots-controllers elite-robots-dashboard-msgs elite-robots-driver elite-robots-moveit-config elite-robots-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Metapackage providing a single installation point for the Elite Robots ROS 2 packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
