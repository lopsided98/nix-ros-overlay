
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager-msgs, fri-configuration-controller, fri-state-broadcaster, hardware-interface, joint-group-impedance-controller, joint-state-broadcaster, joint-trajectory-controller, kuka-control-mode-handler, kuka-driver-interfaces, kuka-drivers-core, kuka-event-broadcaster, kuka-lbr-iiwa-support, launch-testing-ament-cmake, nanopb, ros2-control, ros2lifecycle, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-kuka-sunrise-fri-driver";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_sunrise_fri_driver/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "37ce1ed012e5bdd95423f67bcfc4f7595d80a1af453955a250c8539b224e2625";
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
