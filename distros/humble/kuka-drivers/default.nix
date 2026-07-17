
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kuka-controllers, kuka-driver-interfaces, kuka-drivers-core, kuka-iiqka-eac-driver, kuka-rsi-driver, kuka-rsi-simulator, kuka-sunrise-fri-driver }:
buildRosPackage {
  pname = "ros-humble-kuka-drivers";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_drivers/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e8cb249c883a8bed9246aff10052c56517124e9d0cfa264180b49e39f6d85c0b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ kuka-controllers kuka-driver-interfaces kuka-drivers-core kuka-iiqka-eac-driver kuka-rsi-driver kuka-rsi-simulator kuka-sunrise-fri-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 drivers for KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
