
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-clober-navigation";
  version = "0.2.0-r5";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_navigation/0.2.0-5.tar.gz";
    name = "0.2.0-5.tar.gz";
    sha256 = "cc6453394d63624710d0e36cdde25e11896d8816ed5f153058605ac2dff49d8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober navigation packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
