
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-driver-interfaces, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-fri-state-broadcaster";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/fri_state_broadcaster/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "acf3a8ebeb0ad12075a2e4fc22dd13eae55e1b1403c562881e9ba90dc965d0a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface kuka-driver-interfaces kuka-drivers-core pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Broadcaster for FRI state";
    license = with lib.licenses; [ asl20 ];
  };
}
