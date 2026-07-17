
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-driver-interfaces, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-fri-configuration-controller";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/fri_configuration_controller/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "332983cc2143e9d0b873a91b4879259c20e42c7689cf0ea7853578f0bb19cccf";
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
