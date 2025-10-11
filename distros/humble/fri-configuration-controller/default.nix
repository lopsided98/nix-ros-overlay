
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-driver-interfaces, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-fri-configuration-controller";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/fri_configuration_controller/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "de76f2a8e601a99f72b31e8c4027e8c140e715e6c5e20f547098683ea59a233d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface kuka-driver-interfaces kuka-drivers-core pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Controller for configuration of FRI";
    license = with lib.licenses; [ asl20 ];
  };
}
