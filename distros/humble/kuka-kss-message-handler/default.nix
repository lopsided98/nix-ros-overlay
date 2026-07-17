
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, controller-interface, controller-manager, kuka-driver-interfaces, kuka-drivers-core, pluginlib, ros2-control-test-assets, std-msgs }:
buildRosPackage {
  pname = "ros-humble-kuka-kss-message-handler";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_kss_message_handler/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "afd7478ef193078fc95ba76b2b615640be1506ab907e1fe4537758abafa5db66";
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
