
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-command-msgs, nao-sensor-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-nao-lola";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/nao_lola-release/archive/release/galactic/nao_lola/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "e6fa466bf82175af43aad3397b46c25977b6e414525c046f07d87fcd159be3fd";
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
