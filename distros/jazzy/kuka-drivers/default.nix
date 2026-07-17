
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kuka-controllers, kuka-driver-interfaces, kuka-drivers-core, kuka-iiqka-eac-driver, kuka-rsi-driver, kuka-rsi-simulator, kuka-sunrise-fri-driver }:
buildRosPackage {
  pname = "ros-jazzy-kuka-drivers";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/kuka_drivers/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "6f14e13e2ed54292c43af4d391f6c6c14359da532165afcc9d1f78109584ef01";
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
