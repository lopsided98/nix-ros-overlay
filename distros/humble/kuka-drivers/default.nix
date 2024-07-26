
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, iiqka-moveit-example, kuka-controllers, kuka-driver-interfaces, kuka-drivers-core, kuka-iiqka-eac-driver, kuka-kss-rsi-driver, kuka-rsi-simulator, kuka-sunrise-fri-driver }:
buildRosPackage {
  pname = "ros-humble-kuka-drivers";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_drivers/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "15714bc8a76ce2a63e9ba1862841daeec93e62a0302d78af1fc9401f3719250d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ iiqka-moveit-example kuka-controllers kuka-driver-interfaces kuka-drivers-core kuka-iiqka-eac-driver kuka-kss-rsi-driver kuka-rsi-simulator kuka-sunrise-fri-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 drivers for KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
