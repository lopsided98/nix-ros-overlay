
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-command-msgs, nao-sensor-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-kilted-nao-lola";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/kilted/nao_lola/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "772d7849a6efc45ef032d0697e596552bb7e3136451c3b10eec432af90d2b5d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost nao-command-msgs nao-sensor-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages that allow communicating with the NAO's Lola middle-ware.";
    license = with lib.licenses; [ asl20 ];
  };
}
