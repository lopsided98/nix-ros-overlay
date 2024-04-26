
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-command-msgs, nao-sensor-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-iron-nao-lola";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/iron/nao_lola/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "aa1eac17d2095c5befe2e66eb62f61b55c22bdeac7b5d9464e2ce4f2be2eba7d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost nao-command-msgs nao-sensor-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages that allow communicating with the NAO’s Lola middle-ware.";
    license = with lib.licenses; [ asl20 ];
  };
}
