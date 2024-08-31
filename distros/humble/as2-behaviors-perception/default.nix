
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, as2-behavior, as2-core, as2-msgs, cv-bridge, rclcpp, sensor-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-as2-behaviors-perception";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_behaviors_perception/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "cc1a183b06bef0c5a431faaa765984456e7c0f9ccde021e99c95a39b14daf411";
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
