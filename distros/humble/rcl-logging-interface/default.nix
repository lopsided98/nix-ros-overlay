
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-humble-rcl-logging-interface";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/humble/rcl_logging_interface/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "ac8d4974258f401a1952e943e25bb0034032d4f0eb133ef0341034a744b0ccbe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common rcpputils ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Interface that rcl_logging backends needs to implement.'';
    license = with lib.licenses; [ asl20 ];
  };
}
