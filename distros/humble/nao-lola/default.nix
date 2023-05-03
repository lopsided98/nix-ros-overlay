
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-command-msgs, nao-sensor-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-nao-lola";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nao_lola-release/archive/release/humble/nao_lola/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "f04f1160b4f27bedfaf2fc03c2d7b6cc04efb60c246fa9b36f55d89e6e58ba9f";
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
