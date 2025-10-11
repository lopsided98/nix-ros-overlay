
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager-msgs, fri-configuration-controller, fri-state-broadcaster, hardware-interface, joint-group-impedance-controller, joint-state-broadcaster, joint-trajectory-controller, kuka-control-mode-handler, kuka-driver-interfaces, kuka-drivers-core, kuka-event-broadcaster, kuka-lbr-iiwa-support, launch-testing-ament-cmake, nanopb, ros2-control, ros2lifecycle, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-kuka-sunrise-fri-driver";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_sunrise_fri_driver/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c9a95498f3ccd92884447b386ef8f09e767b01305a1fffdc19ceb91b65bf7aa6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake ros2lifecycle ];
  propagatedBuildInputs = [ controller-manager-msgs fri-configuration-controller fri-state-broadcaster hardware-interface joint-group-impedance-controller joint-state-broadcaster joint-trajectory-controller kuka-control-mode-handler kuka-driver-interfaces kuka-drivers-core kuka-event-broadcaster kuka-lbr-iiwa-support nanopb ros2-control std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 KUKA sunrise interface";
    license = with lib.licenses; [ asl20 ];
  };
}
