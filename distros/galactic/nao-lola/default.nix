
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, boost, nao-command-msgs, nao-sensor-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-nao-lola";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ijnek/nao_lola-release/archive/release/galactic/nao_lola/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "c61ff7eb66fc2a791f130688ab751f11b8170dadf57d7a7a0788988db1e97a87";
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
