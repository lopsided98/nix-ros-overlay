
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-command-msgs, nao-sensor-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-nao-lola";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/rolling/nao_lola/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "946c24f1eee1f0964701d0bc3db74a75f36642f3a4e2a5141c8df8434e9eb920";
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
