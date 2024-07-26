
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-driver-interfaces, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-fri-configuration-controller";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/fri_configuration_controller/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "4990249f0c142bd1017ce1cb0f8bb8f313dc4a99e6ee09a4bfe55abe038e38cc";
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
