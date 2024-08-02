
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-interface";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_interface/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "110ae5cae59ac524d13bed3256d605e159320122493201a5ea313174f43b4b28";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  checkInputs = [ ament-lint-auto ament-lint-common rcpputils ];
  propagatedBuildInputs = [ rcutils ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Interface that rcl_logging backends needs to implement.";
    license = with lib.licenses; [ asl20 ];
  };
}
