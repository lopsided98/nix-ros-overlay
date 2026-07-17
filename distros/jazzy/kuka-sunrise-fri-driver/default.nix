
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, controller-manager-msgs, fri-configuration-controller, fri-state-broadcaster, hardware-interface, joint-group-impedance-controller, joint-state-broadcaster, joint-trajectory-controller, kuka-control-mode-handler, kuka-driver-interfaces, kuka-drivers-core, kuka-event-broadcaster, kuka-lbr-iiwa-support, launch-testing-ament-cmake, nanopb, ros2lifecycle, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-kuka-sunrise-fri-driver";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/kuka_sunrise_fri_driver/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "77f9bab475601a61624a82971c522daaeaa05fef7b818aea986c1a8892bca065";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing-ament-cmake ros2lifecycle ];
  propagatedBuildInputs = [ controller-manager controller-manager-msgs fri-configuration-controller fri-state-broadcaster hardware-interface joint-group-impedance-controller joint-state-broadcaster joint-trajectory-controller kuka-control-mode-handler kuka-driver-interfaces kuka-drivers-core kuka-event-broadcaster kuka-lbr-iiwa-support nanopb std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 KUKA sunrise interface";
    license = with lib.licenses; [ asl20 ];
  };
}
