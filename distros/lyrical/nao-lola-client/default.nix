
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-lola-command-msgs, nao-lola-sensor-msgs, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-nao-lola-client";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/lyrical/nao_lola_client/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "bddfd7078dfe1a9dbde7b159b4c6af9dbcf3d2bf1d45149e94bea4d61c391a58";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost nao-lola-command-msgs nao-lola-sensor-msgs rcl-interfaces rclcpp rclcpp-components sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages that allow communicating with the NAO's Lola middle-ware.";
    license = with lib.licenses; [ asl20 ];
  };
}
