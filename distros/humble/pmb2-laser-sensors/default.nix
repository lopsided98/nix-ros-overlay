
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-humble-pmb2-laser-sensors";
  version = "4.24.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pmb2_navigation-release/archive/release/humble/pmb2_laser_sensors/4.24.1-1.tar.gz";
    name = "4.24.1-1.tar.gz";
    sha256 = "aa5f20a76571297bb2bdbab4de99fbfc2b789d2b00dc6364f5b6f397375f39ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Launch files and scripts needed to bring up the ROS nodes of a PMB2 robot.";
    license = with lib.licenses; [ asl20 ];
  };
}
