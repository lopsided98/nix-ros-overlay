
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, iiqka-moveit-example, kuka-controllers, kuka-driver-interfaces, kuka-drivers-core, kuka-iiqka-eac-driver, kuka-rsi-driver, kuka-rsi-simulator, kuka-sunrise-fri-driver }:
buildRosPackage {
  pname = "ros-humble-kuka-drivers";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_drivers/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "c2162df7ba0675e3007c5c64f62e19279e00e2c7b453f204785092f574ae00b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ iiqka-moveit-example kuka-controllers kuka-driver-interfaces kuka-drivers-core kuka-iiqka-eac-driver kuka-rsi-driver kuka-rsi-simulator kuka-sunrise-fri-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 drivers for KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
