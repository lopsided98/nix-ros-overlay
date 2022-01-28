
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-clober-navigation";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_navigation/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "d36cee4a9460de25ff27ef99f5cd3fad4473d4dc0abbb4adc2555ff7bcf115d5";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober navigation packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
