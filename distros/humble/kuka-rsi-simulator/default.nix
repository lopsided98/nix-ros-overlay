
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros2launch }:
buildRosPackage {
  pname = "ros-humble-kuka-rsi-simulator";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_rsi_simulator/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f817dba4ab8d2193a81e3f15ccb611a55bed266014b79328118f7a146e3f1c1f";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ros2launch ];

  meta = {
    description = "Simple package for simulating the KUKA RSI interface";
    license = with lib.licenses; [ asl20 ];
  };
}
