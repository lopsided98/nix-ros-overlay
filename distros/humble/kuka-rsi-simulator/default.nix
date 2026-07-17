
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros2launch }:
buildRosPackage {
  pname = "ros-humble-kuka-rsi-simulator";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/humble/kuka_rsi_simulator/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "3e39d797b44e9224255895ec3aabd4dd90810ead44d82695f8fa8245cd29ba21";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ros2launch ];

  meta = {
    description = "Simple package for simulating the KUKA RSI interface";
    license = with lib.licenses; [ asl20 ];
  };
}
