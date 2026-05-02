
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-rolling-rcl-logging-interface";
  version = "3.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/rolling/rcl_logging_interface/3.4.1-2.tar.gz";
    name = "3.4.1-2.tar.gz";
    sha256 = "fc1812aec41e356184400720b69c6d3e7c3f684cbd2ae2aad6fab4b6259baa25";
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
