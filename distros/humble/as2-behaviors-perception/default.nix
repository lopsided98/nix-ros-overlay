
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, as2-behavior, as2-core, as2-msgs, cv-bridge, rclcpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-perception";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_perception/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "54bd41a7ac436c1c4b0fcc3c9e6828f41b5ca085669f6daa0656418eaa6fa4fe";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake as2-behavior as2-core as2-msgs cv-bridge rclcpp sensor-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ArUco detector behavior";
    license = with lib.licenses; [ bsd3 ];
  };
}
