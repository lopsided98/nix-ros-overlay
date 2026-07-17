
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros2launch }:
buildRosPackage {
  pname = "ros-jazzy-kuka-rsi-simulator";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/kuka_rsi_simulator/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "a0ac0dbff767b816b7ba0ac2f49f596fe8541ae615db56dfae9c8136b92a80a2";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ros2launch ];

  meta = {
    description = "Simple package for simulating the KUKA RSI interface";
    license = with lib.licenses; [ asl20 ];
  };
}
