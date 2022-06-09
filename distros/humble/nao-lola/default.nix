
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-command-msgs, nao-sensor-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-nao-lola";
  version = "0.0.4-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/humble/nao_lola/0.0.4-4.tar.gz";
    name = "0.0.4-4.tar.gz";
    sha256 = "2c7a7eae17c9036b9e8723916d7eba364fbe7665b1af015155cc2e03747f449e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost nao-command-msgs nao-sensor-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages that allow communicating with the NAO’s Lola middle-ware.'';
    license = with lib.licenses; [ asl20 ];
  };
}
