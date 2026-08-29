
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, elite-cs-series-sdk, elite-robots-calibration, elite-robots-controllers, elite-robots-dashboard-msgs, elite-robots-driver, elite-robots-moveit-config, elite-robots-msgs }:
buildRosPackage {
  pname = "ros-humble-elite-robots";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/humble/elite_robots/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "59fd30626bd3f635e4ea698e5ba83cf9bd3f641e3cffa03a93d94b57401f08bb";
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
