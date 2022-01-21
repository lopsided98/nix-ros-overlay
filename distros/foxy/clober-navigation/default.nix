
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-clober-navigation";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_ros2-release/archive/release/foxy/clober_navigation/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "79450d3dd698c45ce63cc331f183719c5f9e5976a0a96bd08581e930781358fe";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober navigation packages'';
    license = with lib.licenses; [ asl20 ];
  };
}
