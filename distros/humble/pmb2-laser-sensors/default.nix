
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-humble-pmb2-laser-sensors";
  version = "4.21.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pmb2_navigation-release/archive/release/humble/pmb2_laser_sensors/4.21.1-1.tar.gz";
    name = "4.21.1-1.tar.gz";
    sha256 = "65b0ccc1dbce370242053c2ea65a9fe6d703db8c9864389d274bf12a9335a17b";
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
