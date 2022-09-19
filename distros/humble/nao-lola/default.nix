
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-command-msgs, nao-sensor-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-nao-lola";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/humble/nao_lola/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "efe25b61711696e649f69f3012a7c047646c8d6f95c03dfdc3b333093a7b5aa9";
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
