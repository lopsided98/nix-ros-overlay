
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros2launch }:
buildRosPackage {
  pname = "ros-humble-kuka-rsi-simulator";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_rsi_simulator/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "1a5543144adb78fec6c3733c8de346c7812dc6d3c9eda036ab473f6f92ca9e03";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ros2launch ];

  meta = {
    description = "Simple package for simulating the KUKA RSI interface";
    license = with lib.licenses; [ asl20 ];
  };
}
