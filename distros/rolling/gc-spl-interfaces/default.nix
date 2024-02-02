
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-gc-spl-interfaces";
  version = "4.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/gc_spl_interfaces/4.0.0-1.tar.gz";
    name = "4.0.0-1.tar.gz";
    sha256 = "53468876d53939edf6eee44f1908f22c56ec315cf29976f8e3cb21a9d7f857eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RoboCup SPL GameController Data ROS msg'';
    license = with lib.licenses; [ asl20 ];
  };
}
