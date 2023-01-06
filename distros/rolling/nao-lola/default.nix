
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-command-msgs, nao-sensor-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-nao-lola";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/rolling/nao_lola/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "6842d05776bf62fb0b6172e042e96b2c737661c2fae6da7ea588772f54ba5fb9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost nao-command-msgs nao-sensor-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages that allow communicating with the NAO’s Lola middle-ware.'';
    license = with lib.licenses; [ asl20 ];
  };
}
