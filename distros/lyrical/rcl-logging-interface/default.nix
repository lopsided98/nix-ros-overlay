
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, rcpputils, rcutils }:
buildRosPackage {
  pname = "ros-lyrical-rcl-logging-interface";
  version = "3.4.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_logging-release/archive/release/lyrical/rcl_logging_interface/3.4.1-3.tar.gz";
    name = "3.4.1-3.tar.gz";
    sha256 = "ef75be53ab16dcb7d87481bb9b9d23ad94606a1603076c33281cd35d0f9008b8";
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
