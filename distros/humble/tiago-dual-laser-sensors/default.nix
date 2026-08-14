
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, omni-base-laser-sensors, pmb2-laser-sensors }:
buildRosPackage {
  pname = "ros-humble-tiago-dual-laser-sensors";
  version = "4.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_dual_navigation-release/archive/release/humble/tiago_dual_laser_sensors/4.12.0-1.tar.gz";
    name = "4.12.0-1.tar.gz";
    sha256 = "ab99e78d10bec10bdbc72719d716dd7f0c39b7a08061ec97ee4b139933879257";
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
