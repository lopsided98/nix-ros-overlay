
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, controller-manager, kuka-driver-interfaces, kuka-drivers-core, pluginlib, ros2-control-test-assets, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-kuka-kss-message-handler";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/kuka_kss_message_handler/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "a898d4925111b2ab8ddd28a8e2d9be1344dc4f9a19485c7cfa340b088459ad9f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ controller-manager ros2-control-test-assets ];
  propagatedBuildInputs = [ controller-interface kuka-driver-interfaces kuka-drivers-core pluginlib std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Non-real time message handler for KSS KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
