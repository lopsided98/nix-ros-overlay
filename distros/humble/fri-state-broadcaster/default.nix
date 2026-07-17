
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-driver-interfaces, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-fri-state-broadcaster";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/fri_state_broadcaster/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "294385ffb0976cb95f5ce5e59bc3c99346df00043ff9fff348c7d616b3f89d11";
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
