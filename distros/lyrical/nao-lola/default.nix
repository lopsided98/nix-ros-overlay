
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-command-msgs, nao-sensor-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-nao-lola";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/lyrical/nao_lola/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "74cb5d15391aa236911e30f6e1ed76ef7fd1ce9e743c97bdaa4f6828ffc0cc22";
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
