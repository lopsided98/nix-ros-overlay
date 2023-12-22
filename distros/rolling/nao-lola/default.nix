
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-command-msgs, nao-sensor-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-nao-lola";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/rolling/nao_lola/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "14a061bf6eea8b4c673c2034cbacfe454a63c8186e77d3f776c193cb82f4b094";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost nao-command-msgs nao-sensor-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages that allow communicating with the NAO's Lola middle-ware.'';
    license = with lib.licenses; [ asl20 ];
  };
}
