
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-index-python, ament-lint-auto, ament-lint-common, diagnostic-aggregator, force-torque-sensor-broadcaster, imu-sensor-broadcaster, joint-state-broadcaster, joint-trajectory-controller, launch, launch-pal, ros2controlcli }:
buildRosPackage {
  pname = "ros-humble-kangaroo-controller-configuration";
  version = "2.15.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kangaroo_robot-release/archive/release/humble/kangaroo_controller_configuration/2.15.1-1.tar.gz";
    name = "2.15.1-1.tar.gz";
    sha256 = "e1634d828c021707c48ece914740c539a34646e1357211cb25322d5dc9b52cbf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python diagnostic-aggregator force-torque-sensor-broadcaster imu-sensor-broadcaster joint-state-broadcaster joint-trajectory-controller launch launch-pal ros2controlcli ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The kangaroo_controller_configuration package";
    license = with lib.licenses; [ asl20 ];
  };
}
